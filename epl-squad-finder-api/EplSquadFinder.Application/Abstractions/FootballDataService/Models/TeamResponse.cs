namespace EplSquadFinder.Application.Abstractions.FootballDataService.Models;

public class TeamResponse
{
    public required TeamArea Area { get; set; }
    public List<TeamSquad> Squad { get; set; } = [];
    public int Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string? ShortName { get; set; }
    public string? Tla { get; set; }
    public string? Venue { get; set; }
    public string? Crest { get; set; }
    public string? Website { get; set; }
}

public class TeamSquad
{
    public int Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Position { get; set; } = string.Empty;
    public DateTime? DateOfBirth { get; set; }
}