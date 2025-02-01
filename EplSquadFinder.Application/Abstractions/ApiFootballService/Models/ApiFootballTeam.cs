namespace EplSquadFinder.Application.Abstractions.ApiFootballService.Models;

public class ApiFootballTeam
{
    public int Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? Code { get; set; }
}