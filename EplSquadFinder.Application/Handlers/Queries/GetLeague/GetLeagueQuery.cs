using Mediator;

namespace EplSquadFinder.Application.Handlers.Queries.GetLeague;

public record GetLeagueQuery(int Id) : IRequest<LeagueVm?>;