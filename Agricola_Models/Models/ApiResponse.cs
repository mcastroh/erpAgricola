using Agricola_Models.DTO;
using System.Net;

namespace Agricola_Models.Models
{
    public class ApiResponse
    {
        public HttpStatusCode statusCode { get; set; }
        public bool IsExitoso { get; set; }
        public List<string> ErrorMesagges { get; set; }
        //public object Resultado { get; set; }
        public List<UnidadMedidaDto> Resultado { get; set; }
        public UnidadMedidaDto ResultadoObj { get; set; }
    }
}