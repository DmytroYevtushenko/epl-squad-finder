using EplSquadFinder.Application;
using EplSquadFinder.Application.Abstractions;
using EplSquadFinder.Application.Handlers.Commands.PopulateLeague;
using EplSquadFinder.Infrastructure;
using Mediator;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

var builder = Host.CreateApplicationBuilder(args);

builder.Configuration
    .SetBasePath(AppContext.BaseDirectory)
    .AddJsonFile("appsettings.json", false, true);

builder.AddInfrastructureServices();
builder.AddApplicationServices();

var app = builder.Build();

using var scope = app.Services.CreateScope();
var dbContext = scope.ServiceProvider.GetRequiredService<IApplicationDbContext>();
var sender = scope.ServiceProvider.GetRequiredService<ISender>();

Console.WriteLine("Data generation started. Press ESC to exit.");

var cts = new CancellationTokenSource();
Console.CancelKeyPress += (_, e) =>
{
    Console.WriteLine("Stopping execution...");
    cts.Cancel();
    e.Cancel = true;
};

var leagueIds = await dbContext.Leagues
    .Where(x => !x.Teams.Any())
    .Select(x => x.Id)
    .ToListAsync(cts.Token);

if (leagueIds.Count == 0) Console.WriteLine("No empty leagues found.");

foreach (var id in leagueIds)
{
    if (cts.Token.IsCancellationRequested)
    {
        Console.WriteLine("Process stopped.");
        break;
    }

    await sender.Send(new PopulateLeagueCommand(id), cts.Token);
}

Console.WriteLine("Leagues refreshed.");