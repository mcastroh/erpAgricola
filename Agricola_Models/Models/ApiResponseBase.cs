using System.Net;

namespace Agricola_Models.Models
{
    public class ApiResponseBase<T> where T : class
    {
        public HttpStatusCode statusCode { get; set; }
        public bool IsExitoso { get; set; }
        public List<string> ErrorMesagges { get; set; }
        public List<T> Resultado { get; set; }
        public T ResultadoObj { get; set; }
    }
}