using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace EplSquadFinder.Infrastructure.Data.Migrations
{
    /// <inheritdoc />
    public partial class AddUniqueNicknameConstraint : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_TeamNickname_Teams_TeamId",
                table: "TeamNickname");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TeamNickname",
                table: "TeamNickname");

            migrationBuilder.DropIndex(
                name: "IX_TeamNickname_TeamId",
                table: "TeamNickname");

            migrationBuilder.RenameTable(
                name: "TeamNickname",
                newName: "TeamNicknames");

            migrationBuilder.RenameIndex(
                name: "IX_TeamNickname_Name",
                table: "TeamNicknames",
                newName: "IX_TeamNicknames_Name");

            migrationBuilder.AddPrimaryKey(
                name: "PK_TeamNicknames",
                table: "TeamNicknames",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_TeamNicknames_TeamId_Name",
                table: "TeamNicknames",
                columns: new[] { "TeamId", "Name" },
                unique: true);

            migrationBuilder.AddForeignKey(
                name: "FK_TeamNicknames_Teams_TeamId",
                table: "TeamNicknames",
                column: "TeamId",
                principalTable: "Teams",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_TeamNicknames_Teams_TeamId",
                table: "TeamNicknames");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TeamNicknames",
                table: "TeamNicknames");

            migrationBuilder.DropIndex(
                name: "IX_TeamNicknames_TeamId_Name",
                table: "TeamNicknames");

            migrationBuilder.RenameTable(
                name: "TeamNicknames",
                newName: "TeamNickname");

            migrationBuilder.RenameIndex(
                name: "IX_TeamNicknames_Name",
                table: "TeamNickname",
                newName: "IX_TeamNickname_Name");

            migrationBuilder.AddPrimaryKey(
                name: "PK_TeamNickname",
                table: "TeamNickname",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_TeamNickname_TeamId",
                table: "TeamNickname",
                column: "TeamId");

            migrationBuilder.AddForeignKey(
                name: "FK_TeamNickname_Teams_TeamId",
                table: "TeamNickname",
                column: "TeamId",
                principalTable: "Teams",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
