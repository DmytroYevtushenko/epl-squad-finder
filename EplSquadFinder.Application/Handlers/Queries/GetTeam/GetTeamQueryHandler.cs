using EplSquadFinder.Application.Abstractions;
using Mediator;
using Microsoft.EntityFrameworkCore;

namespace EplSquadFinder.Application.Handlers.Queries.GetTeam;

public class GetTeamQueryHandler(IApplicationDbContext dbContext) : IRequestHandler<GetTeamQuery, TeamVm?>
{
    public async ValueTask<TeamVm?> Handle(GetTeamQuery request, CancellationToken cancellationToken)
    {
        return await dbContext.Teams
            .Include(x => x.Players)
            .Where(x => x.Id == request.Id)
            .Select(x => new TeamVm
            {
                Name = x.Name,
                Website = x.Website,
                EmblemPictureUri = x.EmblemPictureUri,
                Players = x.Players.Select(p => new TeamPlayerVm
                {
                    FirstName = p.FirstName,
                    Surname = p.Surname,
                    Position = p.Position,
                    DateOfBirth = p.DateOfBirth,
                    Number = p.Number,
                    ProfilePic = p.ProfilePic,
                    Age = p.Age,
                }),
                Nicknames = x.Nicknames.Select(n => new TeamNicknameVm
                {
                    Id = n.Id,
                    Name = n.Name
                })
            })
            .FirstOrDefaultAsync(cancellationToken);
    }
}