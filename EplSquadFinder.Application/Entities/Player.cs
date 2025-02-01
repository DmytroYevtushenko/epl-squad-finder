namespace EplSquadFinder.Application.Entities;

public class Player : BaseEntity
{
    public string FirstName { get; set; }
    public string Surname { get; set; }
    // Consider replacing it with enum
    public string Position { get; set; }
    public DateTime? DateOfBirth { get; set; }
    public int? Age { get; set; }
    // Potentially can be nullable for free agents or youth players
    public int? Number { get; set; }
    public Uri? ProfilePic { get; set; }
    public int? ApiFootballId { get; set; }
    public int? FootballDataId { get; set; }
    
    public int TeamId { get; set; }
    public Team Team { get; set; }
}