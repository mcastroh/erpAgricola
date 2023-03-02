using Agricola_Api.Repository.IRepository;
using Agricola_Models.Models;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace Agricola_Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmpresaLocalController : ControllerBase
    {
        private readonly IRepository<EmpresaLocal> _repositoryLocal;
        private readonly IMapper _mapper;
        protected ApiResponse<EmpresaLocal> _response;

        #region Constructor

        public EmpresaLocalController(IRepository<EmpresaLocal> repositoryLocal, IMapper mapper)
        {
            _repositoryLocal = repositoryLocal;            
            _mapper = mapper;
            _response = new();
        }

        #endregion 

        #region GetAll

        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<ApiResponse<EmpresaLocal>>> GetAll()
        {
            try
            {
                IEnumerable<EmpresaLocal> lista = await _repositoryLocal.ObtenerTodos();
                _response.Resultado = lista.ToList();
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

        #region GetById

        [HttpGet("{idLocal:int}")]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        public async Task<ActionResult<ApiResponse<EmpresaLocal>>> GetPorId(int idLocal)
        {
            try
            {
                if (idLocal == 0)
                {
                    _response.statusCode = HttpStatusCode.BadRequest;
                    _response.IsExitoso = false;
                    return BadRequest(_response);
                }

                EmpresaLocal local = await _repositoryLocal.Obtener(x => x.IdLocal == idLocal);

                if (local == null)
                {
                    _response.statusCode = HttpStatusCode.NotFound;
                    _response.IsExitoso = false;
                    return NotFound(_response);
                }

                _response.ResultadoObj = local;
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

        #region CrudInsert

        [HttpPost]
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult<ApiResponse<EmpresaLocal>>> CrudInsert([FromBody] EmpresaLocal modelo)
        {
            try
            {
                if (!ModelState.IsValid) { return BadRequest(ModelState); }
                if (modelo == null) { return BadRequest(modelo); }
                if (modelo.IdEmpresa == 0 || modelo.IdLocal != 0) { return StatusCode(StatusCodes.Status500InternalServerError); }

                var empresa = await _repositoryLocal.Obtener(x => x.IdEmpresa == modelo.IdEmpresa);
                                    
                if (empresa == null)
                {
                    ModelState.AddModelError("EmpresaNoExiste", "Empresa no está registrada !");
                    return BadRequest(ModelState);
                }

                var local = await _repositoryLocal.Obtener(x => x.IdEmpresa == modelo.IdEmpresa && x.IdLocal == modelo.IdLocal);

                if (local != null)
                {
                    ModelState.AddModelError("EmpresaLocalExiste", "Local de la Empresa ya está registrado !");
                    return BadRequest(ModelState);
                }

                //modelo.Empresa = null;

                await _repositoryLocal.Crear(modelo);

                _response.ResultadoObj = modelo; ;
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

        [HttpPut("{idLocal:int}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> crudUpdate(int idLocal, [FromBody] EmpresaLocal modelo)
        {
            try
            {
                if (modelo == null || modelo.IdLocal != idLocal)
                {
                    _response.IsExitoso = false;
                    _response.statusCode = HttpStatusCode.BadRequest;
                    return BadRequest(_response);
                }

                var local = await _repositoryLocal.Obtener(x => x.IdEmpresa == modelo.IdEmpresa && x.IdLocal == modelo.IdLocal);

                if (local == null)
                {
                    ModelState.AddModelError("EmpresaLocalNoExiste", "Local de la Empresa no está registrado !");
                    return BadRequest(ModelState);
                }

                await _repositoryLocal.Actualizar(modelo);

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

        #region CrudDelete

        [HttpDelete("{idLocal:int}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> CrudDelete(int idLocal)
        {
            try
            {
                if (idLocal == 0 || idLocal == 0)
                {
                    _response.IsExitoso = false;
                    _response.statusCode = HttpStatusCode.BadRequest;
                    return BadRequest(_response);
                }

                var modelo = await _repositoryLocal.Obtener(x => x.IdLocal == idLocal);

                if (modelo == null)
                {
                    ModelState.AddModelError("EmpresaLocalNoExiste", "Local de la Empresa no está registrado !");
                    return BadRequest(ModelState);
                }

                await _repositoryLocal.Remover(modelo);

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