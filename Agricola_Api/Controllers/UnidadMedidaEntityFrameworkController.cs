using Agricola_Api.DataBase;
using Agricola_Models.Models;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Agricola_Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UnidadMedidaEntityFrameworkController : ControllerBase
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<UnidadMedidaEntityFrameworkController> _logger;

        #region Constructor

        public UnidadMedidaEntityFrameworkController(ILogger<UnidadMedidaEntityFrameworkController> logger, ApplicationDbContext context)
        {
            _logger = logger;
            _context = context;
        }

        #endregion 

        #region GetAll => GetUnidadMedida

        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]

        public dynamic GetUnidadMedida()
        {
            _logger.LogInformation("Obtener las unidades de medida");

            try
            {
                var listObj = _context.UnidadMedida.ToList();
                return StatusCode(StatusCodes.Status200OK, new { mensaje = "Ok", response = listObj });
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

        public IActionResult GetUnidadMedidaPorId(int idUnidad)
        {
            try
            {
                if (idUnidad == 0)
                {
                    _logger.LogError("Código unidad de medida en blanco.");
                    return BadRequest();
                }

                var obj = _context.UnidadMedida.FirstOrDefault(x => x.IdUnidad == idUnidad);

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

        public ActionResult crudInsert([FromBody] UnidadMedida modelo)
        {
            try
            {
                if (!ModelState.IsValid) { return BadRequest(ModelState); }
                if (modelo == null) { return BadRequest(modelo); }
                if (modelo.IdUnidad != 0) { return StatusCode(StatusCodes.Status500InternalServerError); }

                if (_context.UnidadMedida.FirstOrDefault(x => x.Descripcion.ToLower() == modelo.Descripcion.ToLower()) != null)
                {
                    ModelState.AddModelError("DescripcionExiste", "Descripción ya fue registrada!");
                    return BadRequest(ModelState);
                }

                _context.UnidadMedida.Add(modelo);
                _context.SaveChanges();

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

        public IActionResult crudUpdate(int idUnidad, [FromBody] UnidadMedida modelo)
        {
            try
            {
                if (modelo == null || modelo.IdUnidad != idUnidad) { return BadRequest(); }

                if (_context.UnidadMedida.AsNoTracking().FirstOrDefault(x => x.IdUnidad == idUnidad) == null)
                {
                    ModelState.AddModelError("UnidadNoExiste", "Código unidad de medida No está registrada!");
                    return NotFound(ModelState);
                }

                _context.UnidadMedida.Update(modelo);
                _context.SaveChanges();

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

        public IActionResult crudPartialUpdate(int idUnidad, JsonPatchDocument<UnidadMedida> patchUnidadMedida)
        {
            try
            {
                if (patchUnidadMedida == null || idUnidad == 0) { return BadRequest(); }
                var modelo = _context.UnidadMedida.AsNoTracking().FirstOrDefault(x => x.IdUnidad == idUnidad);
                if (modelo == null) { return BadRequest(); }

                patchUnidadMedida.ApplyTo(modelo, ModelState);
                if (!ModelState.IsValid) { return BadRequest(ModelState); }

                _context.UnidadMedida.Update(modelo);
                _context.SaveChanges();

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

        public IActionResult crudDelete(int idUnidad)
        {
            try
            {
                if (idUnidad == 0) { return BadRequest(); }

                var modelo = _context.UnidadMedida.FirstOrDefault(x => x.IdUnidad == idUnidad);
                if (modelo == null) { return NotFound(); }

                _context.Remove(modelo);
                _context.SaveChanges();

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