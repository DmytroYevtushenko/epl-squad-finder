using EplSquadFinder.Application.Abstractions;
using Mediator;
using Microsoft.EntityFrameworkCore;

namespace EplSquadFinder.Application.Handlers.Commands.RemoveTeamNickname;

public class RemoveTeamNicknameHandler(IApplicationDbContext dbContext) : IRequestHandler<RemoveTeamNicknameCommand>
{
    public async ValueTask<Unit> Handle(RemoveTeamNicknameCommand request, CancellationToken cancellationToken)
    {
        var deletedRows = await dbContext.TeamNicknames
            .Where(x => x.Id == request.NicknameId)
            .ExecuteDeleteAsync(cancellationToken: cancellationToken);

        if (deletedRows == 0)
        {
            throw new ArgumentException($"Nickname with ID {request.NicknameId} not found.");
        }

        return Unit.Value;
    }
}