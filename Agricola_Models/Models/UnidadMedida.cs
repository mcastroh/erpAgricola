using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Diagnostics.CodeAnalysis;

namespace Agricola_Models.Models
{
    public class UnidadMedida  
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        [Display(Name = "Unidad Id")]
        [NotNull]
        public int IdUnidad { get; set; }

        [Display(Name = "Descripción")]
        [Required]
        [MaxLength(60)]
        [NotNull]
        public string Descripcion { get; set; }

        [Display(Name = "Símbolo")]
        [Required]
        [MaxLength(20)]
        [NotNull]
        public string Simbolo { get; set; }

        [Display(Name = "Id SUNAT")]
        [Required]
        [MaxLength(20)]
        [NotNull]
        public string IdSunat { get; set; }

        [Display(Name = "Auditoría User")]
        [NotNull]
        [MaxLength(60)]
        public string AuditoriaUser { get; set; }

        [Display(Name = "Auditoría Fecha")]
        [NotNull]
        public DateTime AuditoriaFecha { get; set; }

    }
}