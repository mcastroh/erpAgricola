using System.Linq.Expressions;

namespace Agricola_Api.Repository.IRepository
{
    public interface IRepository<T> where T : class
    {
        Task<List<T>> ObtenerTodos(Expression<Func<T, bool>>? filtro = null);

        Task<T> Obtener(Expression<Func<T, bool>>? filtro = null, bool tracked = true);

        Task Crear(T entidad);

        Task Actualizar(T entidad);

        Task Remover(T entidad);

        Task Grabar();
    }
}