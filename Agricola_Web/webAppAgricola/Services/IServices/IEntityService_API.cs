using System.Linq.Expressions;

namespace webAppAgricola.Services.IServices
{
    public interface IEntityService_API<T> where T : class
    {
        Task<List<T>> ObtenerEntityAll();
        Task<T> ObtenerEntity(int id);
        //Task<bool> Guardar(T objeto);
        //Task<bool> Editar(T objeto);
        //Task<bool> Eliminar(int id);
    }
}