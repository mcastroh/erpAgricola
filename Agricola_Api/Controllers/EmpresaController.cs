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
    public class EmpresaController : ControllerBase
    {
        private readonly IEmpresaRepository _repository;
        private readonly ILogger<EmpresaController> _logger;
        private readonly IMapper _mapper;
        protected ApiResponseEmpresa _response;

        #region Constructor

        public EmpresaController(ILogger<EmpresaController> logger, IEmpresaRepository repository, IMapper mapper)
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
        public async Task<ActionResult<ApiResponseEmpresa>> GetAll()
        {
            try
            {
                _logger.LogInformation("Obtener Empresas");
                IEnumerable<Empresa> lista = await _repository.ObtenerTodos();
                _response.Resultado = _mapper.Map<List<EmpresaDto>>(lista);
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

        [HttpGet("{idEmpresa:int}")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<ActionResult<ApiResponseEmpresa>> GetPorId(int idEmpresa)
        {
            try
            {
                if (idEmpresa == 0)
                {
                    _logger.LogError("Código empresa en blanco.");
                    _response.statusCode = HttpStatusCode.BadRequest;
                    _response.IsExitoso = false;
                    return BadRequest(_response);
                }

                var obj = await _repository.Obtener(x => x.IdEmpresa == idEmpresa);

                if (obj == null)
                {
                    _response.statusCode = HttpStatusCode.NotFound;
                    _response.IsExitoso = false;
                    return NotFound(_response);
                }

                _response.Resultado = null; // obj;
                _response.ResultadoObj= _mapper.Map<EmpresaDto>(obj);
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
        public async Task<ActionResult<ApiResponseEmpresa>> crudInsert([FromBody] Empresa modelo)
        {
            try
            {
                if (!ModelState.IsValid) { return BadRequest(ModelState); }
                if (modelo == null) { return BadRequest(modelo); }
                if (modelo.IdEmpresa != 0) { return StatusCode(StatusCodes.Status500InternalServerError); }

                if (await _repository.Obtener(x => x.RazonSocial.ToLower() == modelo.RazonSocial.ToLower()) != null)
                {
                    ModelState.AddModelError("RazonSocialExiste", "Razón Social  ya fue registrada!");
                    return BadRequest(ModelState);
                }

                modelo.AuditoriaFecha = DateTime.Now;

                await _repository.Crear(modelo);

                _response.Resultado = null; // modelo;
                _response.ResultadoObj = _mapper.Map<EmpresaDto>(modelo); ;
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

        [HttpPut("{idEmpresa:int}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<IActionResult> crudUpdate(int idEmpresa, [FromBody] Empresa modelo)
        {
            try
            {
                if (modelo == null || modelo.IdEmpresa != idEmpresa)
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
            
        #region Eliminar => crudDelete

        [HttpDelete("{idEmpresa:int}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> crudDelete(int idEmpresa)
        {
            try
            {
                if (idEmpresa == 0)
                {
                    _response.IsExitoso = false;
                    _response.statusCode = HttpStatusCode.BadRequest;
                    return BadRequest(_response);
                }

                var modelo = await _repository.Obtener(x => x.IdEmpresa == idEmpresa);

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