using EplSquadFinder.Application.Handlers.Commands.AddTeamNickname;
using EplSquadFinder.Application.Handlers.Commands.RemoveTeamNickname;
using Mediator;
using Microsoft.AspNetCore.Mvc;

namespace EplSquadFinder.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class TeamNicknamesController(ISender sender) : ControllerBase
{
    [HttpPost("team/{teamId:int}")]
    public async Task<IActionResult> AddNickname(int teamId, [FromBody] string name)
    {
        await sender.Send(new AddTeamNicknameCommand(teamId, name));
        return Ok();
    }

    [HttpDelete("{nicknameId:int}")]
    public async Task<IActionResult> RemoveNickname(int nicknameId)
    {
        await sender.Send(new RemoveTeamNicknameCommand(nicknameId));
        return Ok();
    }
}