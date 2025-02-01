using EplSquadFinder.Application.Abstractions;
using Mediator;
using Microsoft.EntityFrameworkCore;

namespace EplSquadFinder.Application.Handlers.Queries.GetLeague;

public class GetLeagueQueryHandler(IApplicationDbContext dbContext) : IRequestHandler<GetLeagueQuery, LeagueVm?>
{
    public async ValueTask<LeagueVm?> Handle(GetLeagueQuery request, CancellationToken cancellationToken)
    {
        var league = await dbContext.Leagues
            .Include(x => x.Teams)
            .ThenInclude(x => x.Nicknames)
            .Where(x => x.Id == request.Id)
            .Select(x => new LeagueVm
            {
                Name = x.Name,
                Season = x.Season,
                SeasonStartDate = x.SeasonStartDate,
                SeasonEndDate = x.SeasonEndDate,
                EmblemPictureUri = x.EmblemPictureUri,
                Teams = x.Teams.Select(t => new LeagueTeamVm
                {
                    Id = t.Id,
                    Name = t.Name,
                    Website = t.Website,
                    EmblemPictureUri = t.EmblemPictureUri,
                    Nicknames = t.Nicknames.Select(n => n.Name)
                })
            })
            .FirstOrDefaultAsync(cancellationToken);

        return league;
    }
}