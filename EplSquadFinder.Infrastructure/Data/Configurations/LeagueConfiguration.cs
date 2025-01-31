using EplSquadFinder.Application.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace EplSquadFinder.Infrastructure.Data.Configurations;

public class LeagueConfiguration : IEntityTypeConfiguration<League>
{
    public void Configure(EntityTypeBuilder<League> builder)
    {
        builder.Property(l => l.Name)
            .IsRequired()
            .HasMaxLength(100);
        
        builder.Property(l => l.EmblemPictureUri).HasMaxLength(255);

        builder.HasIndex(l => l.Name).IsUnique();
        builder.HasIndex(p => p.ApiFootballId).IsUnique().HasFilter("[ApiFootballId] IS NOT NULL");
        builder.HasIndex(p => p.FootballDataId).IsUnique().HasFilter("[FootballDataId] IS NOT NULL");
    }
}