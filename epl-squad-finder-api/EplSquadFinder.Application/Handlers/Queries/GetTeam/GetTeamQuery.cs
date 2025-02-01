using Mediator;

namespace EplSquadFinder.Application.Handlers.Queries.GetTeam;

public record GetTeamQuery(int Id) : IRequest<TeamVm?>;