namespace webAppAgricola.Services.IServices
{
    public interface IEntityServiceAPI<T> where T : class
    {
        Task<List<T>> ObtenerEntityAll(string nameAPI);

        Task<T> ObtenerEntity(string nameAPI, int id);
        
        Task<bool> Guardar(string nameAPI, T modelo);
        
        Task<bool> Editar(string nameAPI, int id, T modelo);
        
        Task<bool> Eliminar(string nameAPI, int id);

    }
}