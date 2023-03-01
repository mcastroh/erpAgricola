using Agricola_Models.Models;

namespace webAppAgricola.Services.IServices
{
    public interface IUnidadMedidaService
    {
        public IList<UnidadMedida> GetlistUnidadMedida(string results);
        public UnidadMedida GetUnidadMedida(string results);
    }
}
