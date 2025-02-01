using EplSquadFinder.Application.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace EplSquadFinder.Infrastructure.Data.Configurations;

public class TeamConfiguration : IEntityTypeConfiguration<Team>
{
    public void Configure(EntityTypeBuilder<Team> builder)
    {
        builder.Property(t => t.Name).HasMaxLength(100).IsRequired();
        builder.Property(t => t.ShortName).HasMaxLength(50);
        builder.Property(t => t.Website).HasMaxLength(255);
        builder.Property(t => t.EmblemPictureUri).HasMaxLength(255);

        // To search by team names
        builder.HasIndex(t => t.Name);

        builder.HasIndex(t => new { t.Name, t.LeagueId }).IsUnique();
        builder.HasIndex(p => p.ApiFootballId).IsUnique().HasFilter("[ApiFootballId] IS NOT NULL");
        builder.HasIndex(p => p.FootballDataId).IsUnique().HasFilter("[FootballDataId] IS NOT NULL");
    }
}