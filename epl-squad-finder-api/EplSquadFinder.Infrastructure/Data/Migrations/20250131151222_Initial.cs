using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace EplSquadFinder.Infrastructure.Data.Migrations
{
    /// <inheritdoc />
    public partial class Initial : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Leagues",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    SeasonStartDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    SeasonEndDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    EmblemPictureUri = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    FootballDataId = table.Column<int>(type: "int", nullable: true),
                    ApiFootballId = table.Column<int>(type: "int", nullable: true),
                    LastUpdated = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Leagues", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Teams",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    ShortName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Website = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    EmblemPictureUri = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    FootballDataId = table.Column<int>(type: "int", nullable: true),
                    ApiFootballId = table.Column<int>(type: "int", nullable: true),
                    LeagueId = table.Column<int>(type: "int", nullable: false),
                    LastUpdated = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Teams", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Teams_Leagues_LeagueId",
                        column: x => x.LeagueId,
                        principalTable: "Leagues",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Players",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FirstName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Surname = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Position = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    DateOfBirth = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Number = table.Column<int>(type: "int", nullable: true),
                    ProfilePic = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    ApiFootballId = table.Column<int>(type: "int", nullable: true),
                    FootballDataId = table.Column<int>(type: "int", nullable: true),
                    TeamId = table.Column<int>(type: "int", nullable: false),
                    LastUpdated = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Players", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Players_Teams_TeamId",
                        column: x => x.TeamId,
                        principalTable: "Teams",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "TeamNickname",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    TeamId = table.Column<int>(type: "int", nullable: false),
                    LastUpdated = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TeamNickname", x => x.Id);
                    table.ForeignKey(
                        name: "FK_TeamNickname_Teams_TeamId",
                        column: x => x.TeamId,
                        principalTable: "Teams",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Leagues_ApiFootballId",
                table: "Leagues",
                column: "ApiFootballId",
                unique: true,
                filter: "[ApiFootballId] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Leagues_FootballDataId",
                table: "Leagues",
                column: "FootballDataId",
                unique: true,
                filter: "[FootballDataId] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Leagues_Name",
                table: "Leagues",
                column: "Name",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Players_ApiFootballId",
                table: "Players",
                column: "ApiFootballId",
                unique: true,
                filter: "[ApiFootballId] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Players_FootballDataId",
                table: "Players",
                column: "FootballDataId",
                unique: true,
                filter: "[FootballDataId] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Players_TeamId",
                table: "Players",
                column: "TeamId");

            migrationBuilder.CreateIndex(
                name: "IX_TeamNickname_Name",
                table: "TeamNickname",
                column: "Name");

            migrationBuilder.CreateIndex(
                name: "IX_TeamNickname_TeamId",
                table: "TeamNickname",
                column: "TeamId");

            migrationBuilder.CreateIndex(
                name: "IX_Teams_ApiFootballId",
                table: "Teams",
                column: "ApiFootballId",
                unique: true,
                filter: "[ApiFootballId] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Teams_FootballDataId",
                table: "Teams",
                column: "FootballDataId",
                unique: true,
                filter: "[FootballDataId] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Teams_LeagueId",
                table: "Teams",
                column: "LeagueId");

            migrationBuilder.CreateIndex(
                name: "IX_Teams_Name",
                table: "Teams",
                column: "Name");

            migrationBuilder.CreateIndex(
                name: "IX_Teams_Name_LeagueId",
                table: "Teams",
                columns: new[] { "Name", "LeagueId" },
                unique: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Players");

            migrationBuilder.DropTable(
                name: "TeamNickname");

            migrationBuilder.DropTable(
                name: "Teams");

            migrationBuilder.DropTable(
                name: "Leagues");
        }
    }
}
