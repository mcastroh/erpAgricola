using Agricola_Api.DataBase;
using Agricola_Api.Repository.IRepository;
using Agricola_Models.Models;

namespace Agricola_Api.Repository
{
    public class EmpresaRepository : Repository<Empresa>, IEmpresaRepository
    {
        private readonly ApplicationDbContext _context;

        public EmpresaRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }

        public async Task<Empresa> Actualizar(Empresa entidad)
        {
            entidad.AuditoriaFecha = DateTime.Now;
            _context.Empresa.Update(entidad);
            await _context.SaveChangesAsync();
            return entidad;
        }
               
    }
}