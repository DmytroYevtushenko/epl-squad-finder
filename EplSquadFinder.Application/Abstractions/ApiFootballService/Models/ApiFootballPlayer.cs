namespace EplSquadFinder.Application.Abstractions.ApiFootballService.Models;

public class ApiFootballPlayer
{
    public int Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Position { get; set; } = string.Empty;
    public int Age { get; set; }
    public int? Number { get; set; }
    public string? Photo { get; set; }
}