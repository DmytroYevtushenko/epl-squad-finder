using EplSquadFinder.Application.Abstractions;
using EplSquadFinder.Application.Entities;
using Microsoft.EntityFrameworkCore;

namespace EplSquadFinder.Infrastructure.Data;

public class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
    : DbContext(options), IApplicationDbContext
{
    public DbSet<League> Leagues => Set<League>();
    public DbSet<Team> Teams => Set<Team>();
    public DbSet<Player> Players => Set<Player>();
    
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfigurationsFromAssembly(typeof(ApplicationDbContext).Assembly);
    }
    
    public override async Task<int> SaveChangesAsync(CancellationToken cancellationToken = default)
    {
        var entries = ChangeTracker.Entries<BaseEntity>()
            .Where(e => e.State is EntityState.Added or EntityState.Modified);

        foreach (var entry in entries)
        {
            entry.Entity.LastRefreshed = DateTime.UtcNow;
        }

        return await base.SaveChangesAsync(cancellationToken);
    }
}