using Agricola_Models.Models;

namespace Agricola_Api.Repository.IRepository
{
    public interface IEmpresaRepository : IRepository<Empresa>
    {
        Task<Empresa> Actualizar(Empresa entidad);
    }
}
