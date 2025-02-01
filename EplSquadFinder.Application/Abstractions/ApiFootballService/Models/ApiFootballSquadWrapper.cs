namespace EplSquadFinder.Application.Abstractions.ApiFootballService.Models;

public class ApiFootballSquadWrapper
{
    public required ApiFootballTeam Team { get; set; }
    public required List<ApiFootballPlayer> Players { get; set; }
}