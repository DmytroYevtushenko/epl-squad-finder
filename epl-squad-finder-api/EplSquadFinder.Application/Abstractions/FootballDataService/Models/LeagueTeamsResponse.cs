namespace EplSquadFinder.Application.Abstractions.FootballDataService.Models;

public class LeagueTeamsResponse
{
    public int Count { get; set; }
    public CompetitionResponse? Competition { get; set; }
    public SeasonResponse? Season { get; set; }
    public List<TeamResponse> Teams { get; set; } = [];
}