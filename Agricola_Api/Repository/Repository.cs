using Agricola_Api.DataBase;
using Agricola_Api.Repository.IRepository;
using Microsoft.EntityFrameworkCore;
using System.Linq.Expressions;

namespace Agricola_Api.Repository
{
    public class Repository<T> : IRepository<T> where T : class
    {
        private readonly ApplicationDbContext _context;
        internal DbSet<T> _dbSet;

        #region Constructor

        public Repository(ApplicationDbContext context) 
        {
            _context = context;
            _dbSet = _context.Set<T>();
        }

        #endregion
        
        #region ObtenerTodos

        public async Task<List<T>> ObtenerTodos(Expression<Func<T, bool>>? filtro = null)
        {
            IQueryable<T> query = _dbSet;
            if (filtro != null) { query = query.Where(filtro); }
            return await query.ToListAsync();
        }

        #endregion

        #region Obtener

        public async Task<T> Obtener(Expression<Func<T, bool>>? filtro = null, bool tracked = true)
        {
            IQueryable<T> query = _dbSet;
            if (!tracked) { query = query.AsNoTracking(); }
            if (filtro != null) { query = query.Where(filtro); }
            return await query.FirstOrDefaultAsync();
        }

        #endregion

        #region Crear

        public async Task Crear(T entidad)
        {
            await _dbSet.AddAsync(entidad);
            await Grabar();
        }

        #endregion

        #region Actualizar

        public async Task Actualizar(T entidad)
        {
            _dbSet.Update(entidad);
            await Grabar();
        }

        #endregion

        #region Remover

        public async Task Remover(T entidad)
        {
            _dbSet.Remove(entidad);
            await Grabar();
        }

        #endregion 

        #region Grabar

        public async Task Grabar()
        {
            await _context.SaveChangesAsync();
        }

        #endregion 
     


    }
}
