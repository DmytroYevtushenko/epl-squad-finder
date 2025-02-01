using AutoFixture;
using EplSquadFinder.Application.Abstractions;
using EplSquadFinder.Application.Entities;
using EplSquadFinder.Application.Handlers.Queries.GetLeague;
using Microsoft.EntityFrameworkCore;
using Moq;
using Moq.EntityFrameworkCore;
using Shouldly;

namespace EplSquadFinder.Application.Tests.Handlers.Queries;

public class GetLeagueQueryHandlerTests
{
    private Fixture _fixture;
    private Mock<IApplicationDbContext> _dbContext;
    private GetLeagueQueryHandler _handler;

    [SetUp]
    public void Setup()
    {
        _fixture = new Fixture();
        _fixture.Behaviors.Add(new OmitOnRecursionBehavior());

        _dbContext = new Mock<IApplicationDbContext>();

        _handler = new GetLeagueQueryHandler(_dbContext.Object);
    }

    [Test]
    public async Task Handle_WhenHaveDbRecord_ReturnsValidData()
    {
        // Arrange
        var leagues = _fixture.CreateMany<League>().ToList();
        _dbContext.Setup(c => c.Leagues).ReturnsDbSet(leagues);

        var matchedLeague = leagues.Last();
        var query = new GetLeagueQuery(matchedLeague.Id);

        // Act
        var result = await _handler.Handle(query, CancellationToken.None);

        // Assert
        var expectedResult = new LeagueVm()
        {
            Name = matchedLeague.Name,
            Season = matchedLeague.Season,
            EmblemPictureUri = matchedLeague.EmblemPictureUri,
            SeasonEndDate = matchedLeague.SeasonEndDate,
            SeasonStartDate = matchedLeague.SeasonStartDate,
            Teams = matchedLeague.Teams.Select(t => new LeagueTeamVm
            {
                Id = t.Id,
                Name = t.Name,
                Website = t.Website,
                EmblemPictureUri = t.EmblemPictureUri,
                Nicknames = t.Nicknames.Select(n => n.Name)
            })
        };
        result.ShouldBeEquivalentTo(expectedResult);
    }

    [Test]
    public async Task Handle_WhenNoDbRecord_ReturnsNull()
    {
        // Arrange
        var leagues = new List<League>();
        _dbContext.Setup(c => c.Leagues).ReturnsDbSet(leagues);

        var query = new GetLeagueQuery(_fixture.Create<int>());

        // Act
        var result = await _handler.Handle(query, CancellationToken.None);

        // Assert
        result.ShouldBeNull();
    }
}