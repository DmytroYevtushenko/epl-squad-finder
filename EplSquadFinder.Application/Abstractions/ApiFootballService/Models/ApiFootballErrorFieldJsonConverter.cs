using System.Text.Json;
using System.Text.Json.Serialization;

namespace EplSquadFinder.Application.Abstractions.ApiFootballService.Models;

// Since the API returns an empty array for the errors field when there are no errors, we need to handle this case.
// Potentially it is not a good place to handle this, but it is a quick fix for now.
public class ApiFootballErrorFieldJsonConverter : JsonConverter<Dictionary<string, string>?>
{
    public override Dictionary<string, string>? Read(ref Utf8JsonReader reader, Type typeToConvert, JsonSerializerOptions options)
    {
        if (reader.TokenType == JsonTokenType.StartObject)
        {
            return JsonSerializer.Deserialize<Dictionary<string, string>>(ref reader, options);
        }
        else if (reader.TokenType == JsonTokenType.StartArray)
        {
            while (reader.Read() && reader.TokenType != JsonTokenType.EndArray) { }
            return null;
        }

        throw new JsonException("Unexpected token type for 'errors' field.");
    }

    public override void Write(Utf8JsonWriter writer, Dictionary<string, string>? value, JsonSerializerOptions options)
    {
        if (value == null)
        {
            writer.WriteStartArray();
            writer.WriteEndArray();
        }
        else
        {
            JsonSerializer.Serialize(writer, value, options);
        }
    }
}