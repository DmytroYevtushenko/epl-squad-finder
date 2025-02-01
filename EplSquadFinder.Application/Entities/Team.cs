namespace EplSquadFinder.Application.Entities;

public class Team : BaseEntity
{
    public required string Name { get; set; }
    public string? ShortName { get; set; }
    public Uri? Website { get; set; }
    public Uri? EmblemPictureUri { get; set; }
    public int? FootballDataId { get; set; }
    public int? ApiFootballId { get; set; }

    public int LeagueId { get; set; }
    public League League { get; set; }

    public ICollection<Player> Players { get; set; } = [];
    public ICollection<TeamNickname> Nicknames { get; set; } = [];
}