using EplSquadFinder.Application.Abstractions.ApiFootballService.Models;
using Refit;

namespace EplSquadFinder.Infrastructure.ExternalApi.ApiFootball;

public interface IApiFootballClient
{
    [Get("/teams?country={country}")]
    Task<ApiFootballTeamSearchResponse> GetTeamsByCountryAsync(string country);

    [Get("/players/squads?team={teamId}")]
    Task<ApiFootballSquadResponse> GetSquadByTeamIdAsync(int teamId);
}