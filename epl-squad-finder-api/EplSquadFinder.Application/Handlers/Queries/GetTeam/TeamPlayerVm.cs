namespace EplSquadFinder.Application.Handlers.Queries.GetTeam;

public class TeamPlayerVm
{
    public required string FirstName { get; set; }
    public required string Surname { get; set; }
    public required string Position { get; set; }
    public DateTime? DateOfBirth { get; set; }
    public int? Age { get; set; }
    public int? Number { get; set; }
    public Uri? ProfilePic { get; set; }
}