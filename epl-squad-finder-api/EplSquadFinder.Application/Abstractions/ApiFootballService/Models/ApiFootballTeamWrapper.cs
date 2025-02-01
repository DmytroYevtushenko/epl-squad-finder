namespace EplSquadFinder.Application.Abstractions.ApiFootballService.Models;

public class ApiFootballTeamWrapper
{
    public ApiFootballTeam Team { get; set; } = null!;
    public ApiFootballVenue Venue { get; set; } = null!;
}