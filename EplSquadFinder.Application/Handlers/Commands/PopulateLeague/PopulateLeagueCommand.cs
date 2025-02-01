using Mediator;

namespace EplSquadFinder.Application.Handlers.Commands.PopulateLeague;

public record PopulateLeagueCommand(int Id) : IRequest;