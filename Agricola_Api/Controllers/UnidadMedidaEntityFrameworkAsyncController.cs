using Agricola_Api.DataBase;
using Agricola_Models.DTO;
using Agricola_Models.Models;
using AutoMapper;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Agricola_Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UnidadMedidaEntityFrameworkAsyncController : ControllerBase
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<UnidadMedidaEntityFrameworkAsyncController> _logger;
        private readonly IMapper _mapper;

        #region Constructor

        public UnidadMedidaEntityFrameworkAsyncController(ILogger<UnidadMedidaEntityFrameworkAsyncController> logger, ApplicationDbContext context, IMapper mapper)
        {
            _logger = logger;
            _context = context;
            _mapper = mapper;
        }

        #endregion 

        #region GetAll => GetUnidadMedida

        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]

        public async Task<dynamic> GetUnidadMedida()
        {
            try
            {
                _logger.LogInformation("Obtener las unidades de medida");
                var listObj = await _context.UnidadMedida.ToListAsync();
                //return StatusCode(StatusCodes.Status200OK, new { mensaje = "Ok", response = listObj });
                return StatusCode(StatusCodes.Status200OK, new { mensaje = "Ok", response = _mapper.Map<IEnumerable<UnidadMedidaDto>>(listObj) });
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message, response = "" });
            }
        }

        #endregion

        #region GetById => GetUnidadMedidaPorId

        [HttpGet("{idUnidad:int}")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]

        public async Task<IActionResult> GetUnidadMedidaPorId(int idUnidad)
        {
            try
            {
                if (idUnidad == 0)
                {
                    _logger.LogError("Código unidad de medida en blanco.");
                    return BadRequest();
                }

                var obj = await _context.UnidadMedida.FirstOrDefaultAsync(x => x.IdUnidad == idUnidad);

                if (obj == null)
                {
                    _logger.LogError("Código unidad de medida " + idUnidad + " no existe");
                    return NotFound();
                }

                return StatusCode(StatusCodes.Status200OK, new { mensaje = "Ok", response = obj });
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message, response = "" });
            }
        }

        #endregion

        #region Adicionar => crudInsertar

        [HttpPost]
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]

        public async Task<ActionResult> crudInsert([FromBody] UnidadMedida modelo)
        {
            try
            {
                if (!ModelState.IsValid) { return BadRequest(ModelState); }
                if (modelo == null) { return BadRequest(modelo); }
                if (modelo.IdUnidad != 0) { return StatusCode(StatusCodes.Status500InternalServerError); }

                if (await _context.UnidadMedida.FirstOrDefaultAsync(x => x.Descripcion.ToLower() == modelo.Descripcion.ToLower()) != null)
                {
                    ModelState.AddModelError("DescripcionExiste", "Descripción ya fue registrada!");
                    return BadRequest(ModelState);
                }

                await _context.UnidadMedida.AddAsync(modelo);
                await _context.SaveChangesAsync();

                return StatusCode(StatusCodes.Status201Created, new { mensaje = "Adicionado código creado " + modelo.IdUnidad});
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message });
            }
        }

        #endregion

        #region Actualizar => crudUpdate

        [HttpPut("{idUnidad:int}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]

        public async Task<IActionResult> crudUpdate(int idUnidad, [FromBody] UnidadMedida modelo)
        {
            try
            {
                if (modelo == null || modelo.IdUnidad != idUnidad) { return BadRequest(); }

                if (await _context.UnidadMedida.AsNoTracking().FirstOrDefaultAsync(x => x.IdUnidad == idUnidad) == null)
                {
                    ModelState.AddModelError("UnidadNoExiste", "Código unidad de medida No está registrada!");
                    return NotFound(ModelState);
                }

                _context.UnidadMedida.Update(modelo);
                await _context.SaveChangesAsync();

                return NoContent();
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message });
            }
        }

        #endregion

        #region Actualizar => crudPartialUpdate

        [HttpPatch("{idUnidad:int}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]

        public async Task<IActionResult> crudPartialUpdate(int idUnidad, JsonPatchDocument<UnidadMedida> patchUnidadMedida)
        {
            try
            {
                if (patchUnidadMedida == null || idUnidad == 0) { return BadRequest(); }
                var modelo = await _context.UnidadMedida.AsNoTracking().FirstOrDefaultAsync(x => x.IdUnidad == idUnidad);
                if (modelo == null) { return BadRequest(); }

                patchUnidadMedida.ApplyTo(modelo, ModelState);
                if (!ModelState.IsValid) { return BadRequest(ModelState); }

                _context.UnidadMedida.Update(modelo);
                await _context.SaveChangesAsync();

                return NoContent();
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message });
            }
        }

        #endregion

        #region Eliminar => crudDelete

        [HttpDelete("{idUnidad:int}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]

        public async Task<IActionResult> crudDelete(int idUnidad)
        {
            try
            {
                if (idUnidad == 0) { return BadRequest(); }

                var modelo = await _context.UnidadMedida.FirstOrDefaultAsync(x => x.IdUnidad == idUnidad);
                if (modelo == null) { return NotFound(); }

                _context.Remove(modelo);
                await _context.SaveChangesAsync();

                return NoContent();
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message });
            }
        }

        #endregion


    }
}