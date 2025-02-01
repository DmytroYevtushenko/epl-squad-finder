using EplSquadFinder.Application.Handlers.Queries.GetTeam;
using Mediator;
using Microsoft.AspNetCore.Mvc;

namespace EplSquadFinder.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class TeamsController(ISender sender) : ControllerBase
{
    [HttpGet("{id:int}")]
    public async Task<IActionResult> GetTeam(int id)
    {
        var result = await sender.Send(new GetTeamQuery(id));
        return result is null ? NotFound() : Ok(result);
    }
}