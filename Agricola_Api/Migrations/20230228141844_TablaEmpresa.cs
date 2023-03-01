using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Agricola_Api.Migrations
{
    public partial class TablaEmpresa : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Empresa",
                columns: table => new
                {
                    IdEmpresa = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    NumeroRUC = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    RazonSocial = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Direccion = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: false),
                    AuditoriaUser = table.Column<string>(type: "nvarchar(60)", maxLength: 60, nullable: true),
                    AuditoriaFecha = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Empresa", x => x.IdEmpresa);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Empresa");
        }
    }
}
