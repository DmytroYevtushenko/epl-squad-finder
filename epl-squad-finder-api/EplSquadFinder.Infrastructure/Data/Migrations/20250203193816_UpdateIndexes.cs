using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace EplSquadFinder.Infrastructure.Data.Migrations
{
    /// <inheritdoc />
    public partial class UpdateIndexes : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Teams_ApiFootballId",
                table: "Teams");

            migrationBuilder.DropIndex(
                name: "IX_Teams_FootballDataId",
                table: "Teams");

            migrationBuilder.DropIndex(
                name: "IX_Teams_LeagueId",
                table: "Teams");

            migrationBuilder.DropIndex(
                name: "IX_Teams_Name",
                table: "Teams");

            migrationBuilder.DropIndex(
                name: "IX_Teams_Name_LeagueId",
                table: "Teams");

            migrationBuilder.DropIndex(
                name: "IX_TeamNicknames_Name",
                table: "TeamNicknames");

            migrationBuilder.DropIndex(
                name: "IX_Players_ApiFootballId",
                table: "Players");

            migrationBuilder.DropIndex(
                name: "IX_Players_FootballDataId",
                table: "Players");

            migrationBuilder.DropIndex(
                name: "IX_Leagues_ApiFootballId",
                table: "Leagues");

            migrationBuilder.DropIndex(
                name: "IX_Leagues_FootballDataId",
                table: "Leagues");

            migrationBuilder.CreateIndex(
                name: "IX_Teams_LeagueId_Name",
                table: "Teams",
                columns: new[] { "LeagueId", "Name" },
                unique: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Teams_LeagueId_Name",
                table: "Teams");

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

            migrationBuilder.CreateIndex(
                name: "IX_TeamNicknames_Name",
                table: "TeamNicknames",
                column: "Name");

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
        }
    }
}
