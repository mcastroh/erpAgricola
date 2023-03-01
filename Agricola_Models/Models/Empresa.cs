using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Diagnostics.CodeAnalysis;

namespace Agricola_Models.Models
{
    public class Empresa
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Empresa Id")]        
        [NotNull]
        public int IdEmpresa { get; set; }

        [Display(Name = "Número de RUC")]
        [Required]
        [MaxLength(20)]
        [NotNull]
        public string NumeroRUC { get; set; }

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

        [Display(Name = "Auditoría User")]
        [NotNull]
        [MaxLength(60)]
        public string AuditoriaUser { get; set; }

        [Display(Name = "Auditoría Fecha")]
        [NotNull]
        public DateTime AuditoriaFecha { get; set; }

    }
}