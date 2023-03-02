using Agricola_Api.DataBase;
using Agricola_Api.Repository.IRepository;
using Agricola_Models.Models;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;
using System.Linq;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace Agricola_Api.Repository
{
    public class EmpresaLocalRepository : Repository<EmpresaLocal>, IEmpresaLocalRepository
    {
        private readonly ApplicationDbContext _context;

        public EmpresaLocalRepository(ApplicationDbContext context) : base(context)
        {
            _context = context;
        }

        public async Task<EmpresaLocal> Actualizar(EmpresaLocal entidad)
        {
            _context.EmpresaLocal.Update(entidad);
            await _context.SaveChangesAsync();
            return entidad;
        }

        #region ObtenerTodos

        public async Task<List<EmpresaLocal>> ObtenerTodosById(int idEmpresa)
        {
            IQueryable<EmpresaLocal> query = _dbSet;
            return await query.Where(x=> x.IdEmpresa == idEmpresa).Include(x=> x.Empresa).ToListAsync();
        }

        #endregion


    }
}