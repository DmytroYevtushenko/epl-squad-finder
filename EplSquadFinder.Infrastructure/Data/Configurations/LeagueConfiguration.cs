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
        
        builder.Property(l => l.Code)
            .IsRequired()
            .HasMaxLength(10);
        
        builder.Property(l => l.EmblemPictureUri).HasMaxLength(255);

        builder.HasIndex(l => l.Name).IsUnique();
        builder.HasIndex(p => p.ApiFootballId).IsUnique().HasFilter("[ApiFootballId] IS NOT NULL");
        builder.HasIndex(p => p.FootballDataId).IsUnique().HasFilter("[FootballDataId] IS NOT NULL");

        builder.HasData(new League
        {
            Id = 1,
            Code = "PL",
            Season = 2024,
            Name = "Premier League",
            SeasonStartDate = new DateTime(2024, 08, 16),
            SeasonEndDate = new DateTime(2025, 05, 25),
        });
    }
}