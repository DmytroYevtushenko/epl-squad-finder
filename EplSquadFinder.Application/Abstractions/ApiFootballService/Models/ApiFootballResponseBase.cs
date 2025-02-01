using System.Text.Json.Serialization;

namespace EplSquadFinder.Application.Abstractions.ApiFootballService.Models;

public class ApiFootballResponseBase<T>
{
    public required List<T> Response { get; set; }

    [JsonConverter(typeof(ApiFootballErrorFieldJsonConverter))]
    public Dictionary<string, string>? Errors { get; set; }
}