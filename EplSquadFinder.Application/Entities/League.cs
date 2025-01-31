namespace EplSquadFinder.Application.Entities;

public class League : BaseEntity
{
    public required string Name { get; set; }
    public DateTime SeasonStartDate { get; set; }
    public DateTime SeasonEndDate { get; set; }
    public Uri? EmblemPictureUri { get; set; }
    public int? FootballDataId { get; set; }
    public int? ApiFootballId { get; set; }
    
    public ICollection<Team> Teams { get; set; } = [];
}