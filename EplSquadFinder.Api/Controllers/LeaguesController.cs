using EplSquadFinder.Application.Handlers.Queries.GetLeague;
using Mediator;
using Microsoft.AspNetCore.Mvc;

namespace EplSquadFinder.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class LeaguesController(ISender sender) : ControllerBase
{
    [HttpGet("{id:int}")]
    public async Task<IActionResult> RefreshAll(int id)
    {
        var result = await sender.Send(new GetLeagueQuery(id));
        return result is null ? NotFound() : Ok(result);
    }
}