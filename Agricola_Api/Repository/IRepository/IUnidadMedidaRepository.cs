using Agricola_Models.Models;

namespace Agricola_Api.Repository.IRepository
{
    public interface IUnidadMedidaRepository : IRepository<UnidadMedida>
    {
        Task<UnidadMedida> Actualizar(UnidadMedida entidad);
    }
}
