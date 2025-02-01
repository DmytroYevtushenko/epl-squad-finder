using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace EplSquadFinder.Infrastructure.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddDefaultLeagueData : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "LastUpdated",
                table: "Teams",
                newName: "LastRefreshed");

            migrationBuilder.RenameColumn(
                name: "LastUpdated",
                table: "TeamNickname",
                newName: "LastRefreshed");

            migrationBuilder.RenameColumn(
                name: "LastUpdated",
                table: "Players",
                newName: "LastRefreshed");

            migrationBuilder.RenameColumn(
                name: "LastUpdated",
                table: "Leagues",
                newName: "LastRefreshed");

            migrationBuilder.AddColumn<string>(
                name: "Code",
                table: "Leagues",
                type: "nvarchar(10)",
                maxLength: 10,
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<int>(
                name: "Season",
                table: "Leagues",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.InsertData(
                table: "Leagues",
                columns: new[] { "Id", "ApiFootballId", "Code", "EmblemPictureUri", "FootballDataId", "LastRefreshed", "Name", "Season", "SeasonEndDate", "SeasonStartDate" },
                values: new object[] { 1, null, "PL", null, null, new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), "Premier League", 2024, new DateTime(2025, 5, 25, 0, 0, 0, 0, DateTimeKind.Unspecified), new DateTime(2024, 8, 16, 0, 0, 0, 0, DateTimeKind.Unspecified) });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "Leagues",
                keyColumn: "Id",
                keyValue: 1);

            migrationBuilder.DropColumn(
                name: "Code",
                table: "Leagues");

            migrationBuilder.DropColumn(
                name: "Season",
                table: "Leagues");

            migrationBuilder.RenameColumn(
                name: "LastRefreshed",
                table: "Teams",
                newName: "LastUpdated");

            migrationBuilder.RenameColumn(
                name: "LastRefreshed",
                table: "TeamNickname",
                newName: "LastUpdated");

            migrationBuilder.RenameColumn(
                name: "LastRefreshed",
                table: "Players",
                newName: "LastUpdated");

            migrationBuilder.RenameColumn(
                name: "LastRefreshed",
                table: "Leagues",
                newName: "LastUpdated");
        }
    }
}
