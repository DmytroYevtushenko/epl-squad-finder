namespace EplSquadFinder.Infrastructure.Options;

public abstract class ExternalServiceOptionsBase
{
    public required string BaseUrl { get; set; }
    public required string ApiKey { get; set; }
}