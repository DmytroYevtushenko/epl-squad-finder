using EplSquadFinder.Application.Abstractions;
using EplSquadFinder.Application.Abstractions.ApiFootballService;
using EplSquadFinder.Application.Abstractions.FootballDataService;
using EplSquadFinder.Infrastructure.Data;
using EplSquadFinder.Infrastructure.ExternalApi.ApiFootball;
using EplSquadFinder.Infrastructure.ExternalApi.FootballData;
using EplSquadFinder.Infrastructure.Options;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Refit;

namespace EplSquadFinder.Infrastructure;

public static class DependencyInjection
{
    public static void AddInfrastructureServices(this IHostApplicationBuilder builder)
    {
        var connectionString = builder.Configuration.GetConnectionString("EplSquadFinderDb");

        builder.Services.AddDbContext<ApplicationDbContext>(options =>
        {
            options.UseSqlServer(connectionString);
            options.UseQueryTrackingBehavior(QueryTrackingBehavior.NoTracking);

            if (!builder.Environment.IsProduction())
            {
                options.EnableSensitiveDataLogging();
                options.EnableDetailedErrors();
            }
        });
        
        builder.Services.AddScoped<IApplicationDbContext>(provider => provider.GetRequiredService<ApplicationDbContext>());

        var footballDataOptions = builder.Configuration.GetSection(FootballDataOptions.Key).Get<FootballDataOptions>();
        builder.Services.AddRefitClient<IFootballDataClient>()
            .ConfigureHttpClient(c =>
            {
                c.BaseAddress = new Uri(footballDataOptions.BaseUrl);
                c.DefaultRequestHeaders.Add("X-Auth-Token", footballDataOptions.ApiKey);
            });

        builder.Services.AddScoped<IFootballDataService, FootballDataService>();
        
        var apiFootballOptions = builder.Configuration.GetSection(ApiFootballOptions.Key).Get<ApiFootballOptions>();
        builder.Services.AddRefitClient<IApiFootballClient>()
            .ConfigureHttpClient(c =>
            {
                c.BaseAddress = new Uri(apiFootballOptions.BaseUrl);
                c.DefaultRequestHeaders.Add("x-apisports-key", apiFootballOptions.ApiKey);
            });
        
        builder.Services.AddScoped<IApiFootballService, ApiFootballService>();
    }
}