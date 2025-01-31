using EplSquadFinder.Application.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace EplSquadFinder.Infrastructure.Data.Configurations;

public class TeamNicknameConfiguration : IEntityTypeConfiguration<TeamNickname>
{
    public void Configure(EntityTypeBuilder<TeamNickname> builder)
    {
        builder.Property(n => n.Name).HasMaxLength(100).IsRequired();
        
        // To search by nicknames
        builder.HasIndex(n => n.Name);
    }
}