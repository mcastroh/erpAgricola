using Agricola_Api.DataBase;
using Agricola_Api.Repository.IRepository;
using Agricola_Models.Models;

namespace Agricola_Api.Repository
{
    public class UnidadMedidaRepository : Repository<UnidadMedida>, IUnidadMedidaRepository
    {
        private readonly ApplicationDbContext _context;

        public UnidadMedidaRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }

        public async Task<UnidadMedida> Actualizar(UnidadMedida entidad)
        {
            entidad.AuditoriaFecha = DateTime.Now;
            _context.UnidadMedida.Update(entidad);
            await _context.SaveChangesAsync();
            return entidad;
        }

    }
}