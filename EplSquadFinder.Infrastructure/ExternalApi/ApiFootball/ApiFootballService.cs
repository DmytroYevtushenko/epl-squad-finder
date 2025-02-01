using EplSquadFinder.Application.Abstractions.ApiFootballService;
using EplSquadFinder.Application.Abstractions.ApiFootballService.Models;
using Microsoft.Extensions.Logging;
using Polly;
using Polly.Contrib.WaitAndRetry;
using Polly.Retry;

namespace EplSquadFinder.Infrastructure.ExternalApi.ApiFootball;

public class ApiFootballService(IApiFootballClient client, ILogger<ApiFootballService> logger) : IApiFootballService
{
    private readonly AsyncRetryPolicy<ApiFootballSquadResponse> _retryPolicy = Policy<ApiFootballSquadResponse>
        .Handle<Exception>()
        .OrResult(r => r.Errors?.ContainsKey("rateLimit") == true) // Retry on API rate limits
        .WaitAndRetryAsync(
            Backoff.DecorrelatedJitterBackoffV2(TimeSpan.FromSeconds(10), retryCount: 5),
            (result, timeSpan, retryCount, context) =>
            {
                logger.LogWarning("Retry {Retry}/5: Waiting {WaitTime} before retrying API call. Reason: {Reason}",
                    retryCount, timeSpan, result.Exception?.Message ?? "API Rate Limit");
            });

    public async Task<List<ApiFootballTeamWrapper>> GetTeamsByCountryAsync(string country)
    {
        var result = await client.GetTeamsByCountryAsync(country);
        return result.Response;
    }

    // TODO: can be wrapped with decorator instead of handling it with useRetries flag
    public async Task<List<ApiFootballPlayer>> GetSquadByTeamIdAsync(int teamId, bool useRetries = true)
    {
        if (useRetries)
        {
            var result = await _retryPolicy.ExecuteAsync(async () => await client.GetSquadByTeamIdAsync(teamId));
            return result?.Response == null ? [] : result.Response[0].Players;
        }
        else
        {
            var result = await client.GetSquadByTeamIdAsync(teamId);
            return result.Response.Count == 0 ? [] : result.Response[0].Players;
        }
    }
}