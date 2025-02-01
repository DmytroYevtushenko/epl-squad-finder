using EplSquadFinder.Application.Abstractions;
using EplSquadFinder.Application.Entities;
using Mediator;

namespace EplSquadFinder.Application.Handlers.Commands.AddTeamNickname;

public class AddTeamNicknameHandler(IApplicationDbContext dbContext)
    : IRequestHandler<AddTeamNicknameCommand, TeamNickname>
{
    public async ValueTask<TeamNickname> Handle(AddTeamNicknameCommand request, CancellationToken cancellationToken)
    {
        var entity = new TeamNickname { Name = request.Name, TeamId = request.TeamId };
        dbContext.TeamNicknames.Add(entity);
        await dbContext.SaveChangesAsync(cancellationToken);
        return entity;
    }
}