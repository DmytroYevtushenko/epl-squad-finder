﻿namespace EplSquadFinder.Application.Entities;

public class TeamNickname : BaseEntity
{
    public required string Name { get; set; }
    public int TeamId { get; set; }
    public Team Team { get; set; } = null!;
}