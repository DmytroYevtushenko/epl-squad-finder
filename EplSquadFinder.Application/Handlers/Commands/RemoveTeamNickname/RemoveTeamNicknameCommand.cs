using Mediator;

namespace EplSquadFinder.Application.Handlers.Commands.RemoveTeamNickname;

public record RemoveTeamNicknameCommand(int NicknameId) : IRequest;