﻿using EplSquadFinder.Application.Entities;
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

        builder.HasIndex(t => new { t.LeagueId, t.Name }).IsUnique();
    }
}