namespace EplSquadFinder.Application.Handlers.Queries.GetLeague;

public class LeagueVm
{
    public required string Name { get; set; }
    public int Season { get; set; }
    public DateTime SeasonStartDate { get; set; }
    public DateTime SeasonEndDate { get; set; }
    public Uri? EmblemPictureUri { get; set; }
    public required IEnumerable<LeagueTeamVm> Teams { get; set; }
}