namespace EplSquadFinder.Application.Handlers.Queries.GetTeam;

public class TeamVm
{
    public required string Name { get; set; }
    public Uri? Website { get; set; }
    public Uri? EmblemPictureUri { get; set; }
    public required IEnumerable<TeamPlayerVm> Players { get; set; }
    public required IEnumerable<TeamNicknameVm> Nicknames { get; set; }
}