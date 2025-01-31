namespace EplSquadFinder.Application.Entities;

public abstract class BaseEntity
{
    public int Id { get; set; }
    public DateTime LastUpdated { get; set; }
}