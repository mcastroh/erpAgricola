using Agricola_Api.Repository.IRepository;
using Agricola_Models.DTO;
using Agricola_Models.Models;
using AutoMapper;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace Agricola_Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UnidadMedidaController : ControllerBase
    {
        private readonly IUnidadMedidaRepository _repository;
        private readonly ILogger<UnidadMedidaController> _logger;
        private readonly IMapper _mapper;
        protected ApiResponse _response;

        #region Constructor

        public UnidadMedidaController(ILogger<UnidadMedidaController> logger, IUnidadMedidaRepository repository, IMapper mapper)
        {
            _logger = logger;
            _repository = repository;
            _mapper = mapper;
            _response = new();
        }

        #endregion 

        #region GetAll => GetUnidadMedida

        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]

        public async Task<ActionResult<ApiResponse>> GetUnidadMedida()
        {
            try
            {
                _logger.LogInformation("Obtener las unidades de medida");
                IEnumerable<UnidadMedida> lista = await _repository.ObtenerTodos();
                //_response.Resultado = lista.ToList();
                _response.Resultado = _mapper.Map<List<UnidadMedidaDto>>(lista);
                _response.statusCode = HttpStatusCode.OK;
                _response.IsExitoso = true;
                return Ok(_response);
            }
            catch (Exception ex)
            {
                _response.ErrorMesagges = new List<string>() { ex.ToString() };
                _response.IsExitoso = false;
            }

            return _response;
        }

        #endregion

        #region GetById => GetUnidadMedidaPorId

        [HttpGet("{idUnidad:int}")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]

        public async Task<ActionResult<ApiResponse>> GetUnidadMedidaPorId(int idUnidad)
        {
            try
            {
                if (idUnidad == 0)
                {
                    _logger.LogError("Código unidad de medida en blanco.");
                    _response.statusCode = HttpStatusCode.BadRequest;
                    _response.IsExitoso = false;
                    return BadRequest(_response);
                }

                var obj = await _repository.Obtener(x => x.IdUnidad == idUnidad);

                if (obj == null)
                {
                    _response.statusCode = HttpStatusCode.NotFound;
                    _response.IsExitoso = false;
                    return NotFound(_response);
                }

                _response.Resultado = null; // obj;
                _response.ResultadoObj= _mapper.Map<UnidadMedidaDto>(obj);
                _response.statusCode = HttpStatusCode.OK;
                _response.IsExitoso = true;
                return Ok(_response);
            }
            catch (Exception ex)
            {
                _response.ErrorMesagges = new List<string>() { ex.ToString() };
                _response.IsExitoso = false;
            }
            return _response;
        }

        #endregion

        #region Adicionar => crudInsertar

        [HttpPost]
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]

        public async Task<ActionResult<ApiResponse>> crudInsert([FromBody] UnidadMedida modelo)
        {
            try
            {
                if (!ModelState.IsValid) { return BadRequest(ModelState); }
                if (modelo == null) { return BadRequest(modelo); }
                if (modelo.IdUnidad != 0) { return StatusCode(StatusCodes.Status500InternalServerError); }

                if (await _repository.Obtener(x => x.Descripcion.ToLower() == modelo.Descripcion.ToLower()) != null)
                {
                    ModelState.AddModelError("DescripcionExiste", "Descripción ya fue registrada!");
                    return BadRequest(ModelState);
                }

                modelo.AuditoriaFecha = DateTime.Now;
                
                await _repository.Crear(modelo);

                _response.Resultado = null; // modelo;
                _response.ResultadoObj = _mapper.Map<UnidadMedidaDto>(modelo); ;
                _response.statusCode = HttpStatusCode.Created;
                _response.IsExitoso = true;

                return Ok(_response);
            }
            catch (Exception ex)
            {
                _response.ErrorMesagges = new List<string>() { ex.ToString() };
                _response.IsExitoso = false;
            }

            return _response;
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
                if (modelo == null || modelo.IdUnidad != idUnidad) 
                {
                    _response.IsExitoso = false;
                    _response.statusCode = HttpStatusCode.BadRequest;
                    return BadRequest(_response); 
                }                  

                await _repository.Actualizar(modelo);

                _response.IsExitoso = true;
                _response.statusCode = HttpStatusCode.NoContent;

                return Ok(_response);
            }
            catch (Exception ex)
            {
                _response.ErrorMesagges = new List<string>() { ex.ToString() };
                _response.IsExitoso = false;
            }

            return BadRequest(_response);
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
                if (patchUnidadMedida == null || idUnidad == 0)
                {
                    return BadRequest();
                }

                var modelo = await _repository.Obtener(x => x.IdUnidad == idUnidad, false);

                if (modelo == null)
                {
                    return BadRequest();
                }

                patchUnidadMedida.ApplyTo(modelo, ModelState);

                if (!ModelState.IsValid)
                {
                    return BadRequest(ModelState);
                }

                await _repository.Actualizar(modelo);

                _response.IsExitoso = true;
                _response.statusCode = HttpStatusCode.NoContent;

                return Ok(_response);
            }
            catch (Exception ex)
            {
                _response.ErrorMesagges = new List<string>() { ex.ToString() };
                _response.IsExitoso = false;
            }

            return BadRequest(_response);
        }

        #endregion

        #region Eliminar => crudDelete

        [HttpDelete("{idUnidad:int}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]

        public async Task<ActionResult> crudDelete(int idUnidad)
        {
            try
            {
                if (idUnidad == 0)
                {
                    _response.IsExitoso = false;
                    _response.statusCode = HttpStatusCode.BadRequest;
                    return BadRequest(_response);
                }

                var modelo = await _repository.Obtener(x => x.IdUnidad == idUnidad);

                if (modelo == null)
                {
                    _response.IsExitoso = false;
                    _response.statusCode = HttpStatusCode.NotFound;
                    return NotFound(_response);
                }

                await _repository.Remover(modelo);

                _response.IsExitoso = true;
                _response.statusCode = HttpStatusCode.NoContent;
                return Ok(_response);
            }
            catch (Exception ex)
            {
                _response.ErrorMesagges = new List<string>() { ex.ToString() };
                _response.IsExitoso = false;
            }

            return BadRequest(_response);
        }

        #endregion


    }
}