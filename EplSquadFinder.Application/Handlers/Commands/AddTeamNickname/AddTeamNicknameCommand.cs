using Mediator;

namespace EplSquadFinder.Application.Handlers.Commands.AddTeamNickname;

public record AddTeamNicknameCommand(int TeamId, string Name) : IRequest;