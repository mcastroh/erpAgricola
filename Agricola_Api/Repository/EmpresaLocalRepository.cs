using Agricola_Api.DataBase;
using Agricola_Api.Repository.IRepository;
using Agricola_Models.Models;
using Microsoft.EntityFrameworkCore;

namespace Agricola_Api.Repository
{
    public class EmpresaLocalRepository : Repository<EmpresaLocal>, IEmpresaLocalRepository
    {
        private readonly ApplicationDbContext _context;

        public EmpresaLocalRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }

        #region ObtenerTodos

        public async Task<List<EmpresaLocal>> ObtenerTodosById(int idEmpresa)
        {
            IQueryable<EmpresaLocal> query = _dbSet;
            return await query.Where(x => x.IdEmpresa == idEmpresa).Include(x => x.Empresa).ToListAsync();
        }

        #endregion

    }
}
 