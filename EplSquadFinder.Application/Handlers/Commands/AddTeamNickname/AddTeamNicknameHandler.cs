using EplSquadFinder.Application.Abstractions;
using EplSquadFinder.Application.Entities;
using Mediator;

namespace EplSquadFinder.Application.Handlers.Commands.AddTeamNickname;

public class AddTeamNicknameHandler(IApplicationDbContext dbContext) : IRequestHandler<AddTeamNicknameCommand>
{
    public async ValueTask<Unit> Handle(AddTeamNicknameCommand request, CancellationToken cancellationToken)
    {
        dbContext.TeamNicknames.Add(new TeamNickname { Name = request.Name, TeamId = request.TeamId});
        await dbContext.SaveChangesAsync(cancellationToken);
        return Unit.Value;
    }
}