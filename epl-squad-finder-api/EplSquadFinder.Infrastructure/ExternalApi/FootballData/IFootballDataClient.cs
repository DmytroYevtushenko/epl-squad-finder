using EplSquadFinder.Application.Abstractions.FootballDataService.Models;
using Refit;

namespace EplSquadFinder.Infrastructure.ExternalApi.FootballData;

public interface IFootballDataClient
{
    [Get("/competitions/{leagueCode}/teams?season={season}")]
    Task<LeagueTeamsResponse> GetLeagueTeamsAsync(string leagueCode, int season);
}