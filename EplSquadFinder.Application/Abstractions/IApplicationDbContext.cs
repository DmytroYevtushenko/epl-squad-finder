using EplSquadFinder.Application.Entities;
using Microsoft.EntityFrameworkCore;

namespace EplSquadFinder.Application.Abstractions;

public interface IApplicationDbContext
{
    DbSet<League> Leagues { get; }
    DbSet<Team> Teams { get; }
    DbSet<Player> Players { get; }

    Task<int> SaveChangesAsync(CancellationToken cancellationToken);
}