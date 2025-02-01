using EplSquadFinder.Application.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace EplSquadFinder.Infrastructure.Data.Configurations;

public class PlayerConfiguration : IEntityTypeConfiguration<Player>
{
    public void Configure(EntityTypeBuilder<Player> builder)
    {
        builder.Property(p => p.FirstName).HasMaxLength(50).IsRequired();
        builder.Property(p => p.Surname).HasMaxLength(50).IsRequired();
        builder.Property(p => p.Position).HasMaxLength(20).IsRequired();
        builder.Property(p => p.ProfilePic).HasMaxLength(255);

        builder.HasIndex(p => p.ApiFootballId).IsUnique().HasFilter("[ApiFootballId] IS NOT NULL");
        builder.HasIndex(p => p.FootballDataId).IsUnique().HasFilter("[FootballDataId] IS NOT NULL");
    }
}