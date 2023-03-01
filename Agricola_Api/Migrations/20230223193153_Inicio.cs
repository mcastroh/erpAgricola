using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Agricola_Api.Migrations
{
    public partial class Inicio : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "UnidadMedida",
                columns: table => new
                {
                    IdUnidad = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Descripcion = table.Column<string>(type: "nvarchar(60)", maxLength: 60, nullable: false),
                    Simbolo = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    IdSunat = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    AuditoriaUser = table.Column<string>(type: "nvarchar(60)", maxLength: 60, nullable: false),
                    AuditoriaFecha = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UnidadMedida", x => x.IdUnidad);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "UnidadMedida");
        }
    }
}
