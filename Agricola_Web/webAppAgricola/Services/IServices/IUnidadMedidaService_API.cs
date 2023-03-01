using Agricola_Models.DTO;
using Agricola_Models.Models;

namespace webAppAgricola.Services.IServices
{
    public interface IUnidadMedidaService_API
    {
        Task<List<UnidadMedidaDto>> Lista();
        Task<UnidadMedidaDto> Obtener(int idUnidad);
        Task<bool> Guardar(UnidadMedida objeto);
        Task<bool> Editar(UnidadMedida objeto);
        Task<bool> Eliminar(int idUnidad);
    }
}