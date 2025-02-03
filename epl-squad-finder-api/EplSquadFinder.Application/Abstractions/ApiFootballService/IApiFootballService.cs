using EplSquadFinder.Application.Abstractions.ApiFootballService.Models;

namespace EplSquadFinder.Application.Abstractions.ApiFootballService;

// TODO: Replace with a more business-oriented abstraction instead of an API-specific one.
public interface IApiFootballService
{
    Task<List<ApiFootballTeamWrapper>> GetTeamsByCountryAsync(string country);
    Task<List<ApiFootballPlayer>> GetSquadByTeamIdAsync(int teamId, bool useRetries = true);
}
