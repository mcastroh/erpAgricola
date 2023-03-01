using Agricola_Models.DTO;
using System.Net;

namespace Agricola_Models.Models
{
    public class ApiResponseEmpresa
    {
        public HttpStatusCode statusCode { get; set; }
        public bool IsExitoso { get; set; }
        public List<string> ErrorMesagges { get; set; }
        public List<EmpresaDto> Resultado { get; set; }
        public EmpresaDto ResultadoObj { get; set; }
    }
}