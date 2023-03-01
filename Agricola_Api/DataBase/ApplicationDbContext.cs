using Agricola_Models.Models;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics.CodeAnalysis;
using System.Xml.Linq;

namespace Agricola_Api.DataBase
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        public DbSet<UnidadMedida> UnidadMedida { get; set; }
        public DbSet<Empresa> Empresa { get; set; }
        public DbSet<EmpresaLocal> EmpresaLocal { get; set; }

        //protected override void OnModelCreating(ModelBuilder modelBuilder)
        //{
        //    modelBuilder.Entity<UnidadMedida>().HasData(
        //        new
        //        {
        //            IdUnidad = 32,
        //            Descripcion = "mach32",
        //            Simbolo = "m",
        //            IdSunat = "sunatmach32",
        //            AuditoriaUser = "mcastro",
        //            AuditoriaFecha = DateTime.Now
        //        },
        //        new
        //        {
        //            IdUnidad = 33,
        //            Descripcion = "xxmach32",
        //            Simbolo = "xm",
        //            IdSunat = "xsunatmach32",
        //            AuditoriaUser = "xmcastro",
        //            AuditoriaFecha = DateTime.Now
        //        });
        //}


    }
}