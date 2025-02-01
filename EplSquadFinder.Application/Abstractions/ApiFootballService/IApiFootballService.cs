using EplSquadFinder.Application.Abstractions.ApiFootballService.Models;

namespace EplSquadFinder.Application.Abstractions.ApiFootballService;

public interface IApiFootballService
{
    Task<List<ApiFootballTeamWrapper>> GetTeamsByCountryAsync(string country);
    Task<List<ApiFootballPlayer>> GetSquadByTeamIdAsync(int teamId, bool useRetries = true);
}