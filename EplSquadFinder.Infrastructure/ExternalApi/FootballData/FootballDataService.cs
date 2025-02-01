using EplSquadFinder.Application.Abstractions.FootballDataService;
using EplSquadFinder.Application.Abstractions.FootballDataService.Models;

namespace EplSquadFinder.Infrastructure.ExternalApi.FootballData;

public class FootballDataService(IFootballDataClient client) : IFootballDataService
{
    public async Task<LeagueTeamsResponse> GetLeagueTeamsAsync(string leagueCode, int season)
    {
        return await client.GetLeagueTeamsAsync(leagueCode, season);
    }
}