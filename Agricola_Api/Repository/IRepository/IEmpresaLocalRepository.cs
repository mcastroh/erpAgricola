using Agricola_Models.Models;

namespace Agricola_Api.Repository.IRepository
{
    public interface IEmpresaLocalRepository : IRepository<EmpresaLocal>
    {
        Task<List<EmpresaLocal>> ObtenerTodosById(int idEmpresa);
    }
}