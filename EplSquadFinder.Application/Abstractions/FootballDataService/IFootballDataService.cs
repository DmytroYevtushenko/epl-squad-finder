using EplSquadFinder.Application.Abstractions.FootballDataService.Models;

namespace EplSquadFinder.Application.Abstractions.FootballDataService;

public interface IFootballDataService
{
    Task<LeagueTeamsResponse> GetLeagueTeamsAsync(string leagueCode, int season);
}