using System.Globalization;
using EplSquadFinder.Application.Abstractions;
using EplSquadFinder.Application.Abstractions.ApiFootballService;
using EplSquadFinder.Application.Abstractions.ApiFootballService.Models;
using EplSquadFinder.Application.Abstractions.FootballDataService;
using EplSquadFinder.Application.Abstractions.FootballDataService.Models;
using EplSquadFinder.Application.Entities;
using FuzzySharp;
using Mediator;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace EplSquadFinder.Application.Handlers.Commands.PopulateLeague;

public class PopulateLeagueHandler(
    IApplicationDbContext dbContext,
    IFootballDataService footballDataService,
    IApiFootballService apiFootballService,
    ILogger<PopulateLeagueHandler> logger) : IRequestHandler<PopulateLeagueCommand>
{
    private static readonly HashSet<string> YouthTeamPrefixes =
        ["U21", "U23", "U19", "U18", "II", "Reserves", "B", "Youth", "Academy"];

    public async ValueTask<Unit> Handle(PopulateLeagueCommand request, CancellationToken cancellationToken)
    {
        logger.LogInformation("Starting league {Id} population", request.Id);

        var league = await dbContext.Leagues
            .Include(l => l.Teams)
            .FirstOrDefaultAsync(x => x.Id == request.Id, cancellationToken);

        if (league == null)
        {
            logger.LogError("League {Id} not found", request.Id);
            throw new ArgumentException($"League {request.Id} not found");
        }

        // TODO: add error handling in case there are no such league. It should be fine for PL for now
        var fdLeagueResponse = await footballDataService.GetLeagueTeamsAsync(league.Code, league.Season);
        UpdateLeagueDetails(league, fdLeagueResponse);
        dbContext.Leagues.Update(league);

        // Since free plan don`t have access to the last season - get all teams by country.
        var countryName = fdLeagueResponse.Teams.First(x => !string.IsNullOrEmpty(x.Area.Name)).Area.Name;
        if (string.IsNullOrEmpty(countryName))
        {
            logger.LogError("Country name is empty. League {LeagueId} is not populated", league.Id);
            return Unit.Value;
        }

        var apiTeams = await apiFootballService.GetTeamsByCountryAsync(countryName);

        foreach (var teamData in fdLeagueResponse.Teams)
        {
            var bestMatchTeam = FindBestApiTeamMatch(apiTeams, teamData);
            if (bestMatchTeam == null)
            {
                continue;
            }

            var teamEntity = new Team
            {
                Name = teamData.Name,
                ShortName = teamData.ShortName,
                Website = string.IsNullOrEmpty(teamData.Website) ? null : new Uri(teamData.Website),
                EmblemPictureUri = string.IsNullOrEmpty(teamData.Crest) ? null : new Uri(teamData.Crest),
                FootballDataId = teamData.Id,
                ApiFootballId = bestMatchTeam.Id,
                LeagueId = league.Id
            };
            league.Teams.Add(teamEntity);

            var apiPlayers = await apiFootballService.GetSquadByTeamIdAsync(bestMatchTeam.Id, useRetries: true);
            var fdPlayers = teamData.Squad;

            PopulatePlayers(teamEntity, apiPlayers, fdPlayers);

            await dbContext.SaveChangesAsync(cancellationToken);
        }

        return Unit.Value;
    }

    private ApiFootballTeam? FindBestApiTeamMatch(List<ApiFootballTeamWrapper> apiTeams, TeamResponse teamData)
    {
        var potentialMatches = apiTeams.Select(x => new
            {
                x.Team,
                Score = CalculateTeamsMatchScore(teamData, x.Team, x.Venue)
            })
            .OrderByDescending(x => x.Score)
            .Where(x => x.Score > 90) // Accept only good matches
            .ToList();

        switch (potentialMatches.Count)
        {
            case 0:
                logger.LogWarning("No match found for team {TeamName}", teamData.Name);
                return null;
            case > 1:
            {
                logger.LogWarning("Multiple potential matches for {TeamName}:", teamData.Name);
                foreach (var match in potentialMatches)
                {
                    logger.LogWarning("- {ApiTeamName} (Score: {Score})", match.Team.Name, match.Score);
                }

                break;
            }
        }

        var bestMatch = potentialMatches[0];
        return bestMatch.Team;
    }

    private static void UpdateLeagueDetails(League league, LeagueTeamsResponse fdLeagueResponse)
    {
        if (fdLeagueResponse.Season != null)
        {
            league.SeasonStartDate = fdLeagueResponse.Season.StartDate;
            league.SeasonEndDate = fdLeagueResponse.Season.EndDate;
        }

        if (fdLeagueResponse.Competition == null)
        {
            return;
        }

        league.FootballDataId = fdLeagueResponse.Competition.Id;
        if (fdLeagueResponse.Competition.Emblem != null)
        {
            league.EmblemPictureUri = new Uri(fdLeagueResponse.Competition.Emblem);
        }
    }

    private void PopulatePlayers(Team team, List<ApiFootballPlayer> apiPlayers, List<TeamSquad> fdPlayers)
    {
        var usedFootballDataIds = new HashSet<int>();

        // Match players from API-Football with Football-Data based on best name similarity
        foreach (var apiPlayer in apiPlayers)
        {
            var bestMatch = fdPlayers
                .Where(fdPlayer => !usedFootballDataIds.Contains(fdPlayer.Id)) // Ignore already matched players
                .Select(fdPlayer => new
                {
                    FootballDataPlayer = fdPlayer,
                    Score = Fuzz.PartialRatio(NormalizeName(fdPlayer.Name), NormalizeName(apiPlayer.Name))
                })
                .OrderByDescending(x => x.Score)
                .FirstOrDefault(x => x.Score > 65); // Accept only good matches

            if (bestMatch != null)
            {
                var firstName = ExtractFirstName(bestMatch.FootballDataPlayer.Name) ?? ExtractFirstName(apiPlayer.Name);
                if (firstName == null)
                {
                    continue;
                }

                var lastName = ExtractLastName(bestMatch.FootballDataPlayer.Name) ?? ExtractLastName(apiPlayer.Name);
                if (lastName == null)
                {
                    continue;
                }

                usedFootballDataIds.Add(bestMatch.FootballDataPlayer.Id);

                team.Players.Add(new Player
                {
                    FirstName = firstName,
                    Surname = lastName,
                    Position = bestMatch.FootballDataPlayer.Position,
                    DateOfBirth = bestMatch.FootballDataPlayer.DateOfBirth,
                    Age = apiPlayer.Age,
                    Number = apiPlayer.Number,
                    ProfilePic = !string.IsNullOrEmpty(apiPlayer.Photo) ? new Uri(apiPlayer.Photo) : null,
                    ApiFootballId = apiPlayer.Id,
                    FootballDataId = bestMatch.FootballDataPlayer.Id
                });
            }
            else
            {
                logger.LogWarning("No players found for player {Name}", apiPlayer.Name);
                var firstName = ExtractFirstName(apiPlayer.Name);
                if (firstName == null)
                {
                    continue;
                }

                var lastName = ExtractLastName(apiPlayer.Name);
                if (lastName == null)
                {
                    continue;
                }

                team.Players.Add(new Player
                {
                    FirstName = firstName,
                    Surname = lastName,
                    Position = apiPlayer.Position,
                    Age = apiPlayer.Age,
                    Number = apiPlayer.Number,
                    ProfilePic = !string.IsNullOrEmpty(apiPlayer.Photo) ? new Uri(apiPlayer.Photo) : null,
                    ApiFootballId = apiPlayer.Id
                });
            }
        }
    }

    private static double CalculateTeamsMatchScore(TeamResponse leagueTeam, ApiFootballTeam apiTeam,
        ApiFootballVenue? venue)
    {
        double score = 0;

        var isLeagueTeamYouth =
            YouthTeamPrefixes.Any(prefix => leagueTeam.Name.Contains(prefix, StringComparison.OrdinalIgnoreCase));
        var isApiTeamYouth =
            YouthTeamPrefixes.Any(prefix => apiTeam.Name.Contains(prefix, StringComparison.OrdinalIgnoreCase));

        // If league team is NOT a youth team, penalize youth teams heavily (-50)
        if (!isLeagueTeamYouth && isApiTeamYouth)
        {
            score -= 50;
        }

        // 1 Exact Name Match
        score += 0.6 * Fuzz.Ratio(leagueTeam.Name, apiTeam.Name);

        // 2 Short Name / Code Match
        score += 0.4 * Fuzz.Ratio(leagueTeam.ShortName, apiTeam.Name);

        // 3 Code matches
        if (!string.IsNullOrEmpty(leagueTeam.Tla) &&
            string.Equals(leagueTeam.Tla, apiTeam.Code, StringComparison.OrdinalIgnoreCase))
        {
            score += 30;
        }

        // 4 Venue Name Match
        if (venue != null && !string.IsNullOrEmpty(leagueTeam.Venue) && !string.IsNullOrEmpty(venue.Name))
        {
            double venueMatchScore = Fuzz.PartialRatio(venue.Name, leagueTeam.Venue);
            // I assume a youth team usually plays on the same stadium
            score += isApiTeamYouth ? 0.05 * venueMatchScore : 0.25 * venueMatchScore;
        }

        return score;
    }

    private static string NormalizeName(string name)
    {
        return name.Replace(".", "").ToLower(CultureInfo.InvariantCulture).Trim();
    }

    private static string? ExtractFirstName(string? fullName)
    {
        if (string.IsNullOrEmpty(fullName)) return null;

        var parts = fullName.Split(" ");
        return parts.Length > 1 ? parts[0] : fullName;
    }

    private static string? ExtractLastName(string? fullName)
    {
        if (string.IsNullOrEmpty(fullName)) return null;

        var parts = fullName.Split(" ");
        return parts.Length > 1 ? parts.Last() : fullName;
    }
}