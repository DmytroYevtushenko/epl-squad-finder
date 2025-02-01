namespace EplSquadFinder.Infrastructure.Options;

public abstract class ExternalServiceOptionsBase
{
    public string BaseUrl { get; set; }
    public string ApiKey { get; set; }
}