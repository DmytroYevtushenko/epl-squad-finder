namespace EplSquadFinder.Application.Handlers.Queries.GetLeague;

public class LeagueTeamVm
{
    public int Id { get; set; }
    public required string Name { get; set; }
    public Uri? Website { get; set; }
    public Uri? EmblemPictureUri { get; set; }
    public required IEnumerable<string> Nicknames { get; set; }
}