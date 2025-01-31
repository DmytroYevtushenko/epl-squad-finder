namespace EplSquadFinder.Application.Entities;

public abstract class BaseEntity
{
    public int Id { get; set; }
    public DateTime LastRefreshed { get; set; }
}