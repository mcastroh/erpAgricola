using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Diagnostics.CodeAnalysis;

namespace Agricola_Models.Models
{
    public class EmpresaLocal
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        //[DatabaseGenerated(DatabaseGeneratedOption.None)]  => CLAVE NO ES AUTOINCREMENTAL
        [Display(Name = "Local Id")]
        [NotNull]
        public int IdLocal { get; set; }

        [Display(Name = "Razón Social")]
        [Required]
        [MaxLength(100)]
        [NotNull]
        public string RazonSocial { get; set; }

        [Display(Name = "Dirección")]
        [Required]
        [MaxLength(200)]
        [NotNull]
        public string Direccion { get; set; }


        [Display(Name = "Empresa Id")]
        [Required]
        public int IdEmpresa { get; set; }

        [ForeignKey("IdEmpresa")]
        public Empresa Empresa { get; set; }


    }
}