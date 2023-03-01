using Agricola_Models.DTO;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Data.SqlClient;

namespace Agricola_Api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UnidadMedidaInicialController : ControllerBase
    {
        private readonly string cadenaConexion;
        private readonly ILogger<UnidadMedidaInicialController> _logger;

        #region Constructor

        public UnidadMedidaInicialController(IConfiguration _iConfiguration, ILogger<UnidadMedidaInicialController> logger)
        {
            cadenaConexion = _iConfiguration.GetConnectionString("CnSqlServer");
            _logger = logger;
        }

        #endregion 

        #region GetAll => GetUnidadMedida

        [HttpGet]
        [ProducesResponseType(StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public dynamic GetUnidadMedida()
        {
            _logger.LogInformation("Obtener las unidades de medida");
            List<UnidadMedidaDto> listObj = new List<UnidadMedidaDto>();

            try
            {
                using (SqlConnection conexion = new SqlConnection(cadenaConexion))
                {
                    SqlCommand cmd = new SqlCommand("UnidadMedida_Select_All", conexion);
                    cmd.CommandType = CommandType.StoredProcedure;
                    conexion.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            UnidadMedidaDto obj = new UnidadMedidaDto();
                            obj.IdUnidad = Convert.ToInt32(dr["IdUnidad"]);
                            obj.Descripcion = dr["Descripcion"].ToString();
                            obj.Simbolo = dr["Simbolo"].ToString();
                            obj.IdSunat = dr["IdSunat"].ToString();
                            obj.AuditoriaUser = dr["AuditoriaUser"].ToString();
                            obj.AuditoriaFecha = Convert.ToDateTime(dr["AuditoriaFecha"]);
                            listObj.Add(obj);
                        }
                    }
                }
                return StatusCode(StatusCodes.Status200OK, new { mensaje = "Ok", response = listObj });
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message, response = listObj });
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
            if (idUnidad == 0)
            {
                _logger.LogError("Error en código unidad de medida en blanco.");
                return BadRequest();
            }

            UnidadMedidaDto obj = new UnidadMedidaDto();

            try
            {
                using (SqlConnection conexion = new SqlConnection(cadenaConexion))
                {
                    SqlCommand cmd = new SqlCommand("UnidadMedida_Select_By_Id", conexion);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("IdUnidad", idUnidad);
                    conexion.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            obj.IdUnidad = Convert.ToInt32(dr["IdUnidad"]);
                            obj.Descripcion = dr["Descripcion"].ToString();
                            obj.Simbolo = dr["Simbolo"].ToString();
                            obj.IdSunat = dr["IdSunat"].ToString();
                            obj.AuditoriaUser = dr["AuditoriaUser"].ToString();
                            obj.AuditoriaFecha = Convert.ToDateTime(dr["AuditoriaFecha"]);
                        }
                    }
                }

                if (obj.IdUnidad == 0)
                {
                    _logger.LogError("Código unidad de medida " + idUnidad + " no existe");
                    return NotFound();
                }

                return StatusCode(StatusCodes.Status200OK, new { mensaje = "Ok", response = obj });
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message, response = obj });
            }
        }

        #endregion

        #region Adicionar => crudInsertar

        [HttpPost]
        [ProducesResponseType(StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]

        public ActionResult crudInsert([FromBody] UnidadMedidaDto obj)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return BadRequest(ModelState);
                }
                                
                var objExiste = GetPorClave(obj.IdUnidad);
                
                if (objExiste.Descripcion != null)
                {
                    ModelState.AddModelError("CodigoExiste", "El código ya fue registrado !");
                    return BadRequest(ModelState);
                } 

                var unidadMedidaDto = IsExists_Name(obj.Descripcion);

                if (unidadMedidaDto.Count != 0)
                {
                    ModelState.AddModelError("DescripcionExiste", "La descripción ya fue registrada !");
                    return BadRequest(ModelState);
                }

                using (SqlConnection conexion = new SqlConnection(cadenaConexion))
                {
                    SqlCommand cmd = new SqlCommand("UnidadMedida_Insert", conexion);
                    cmd.Parameters.AddWithValue("IdUnidad", obj.IdUnidad);
                    cmd.Parameters.AddWithValue("Descripcion", obj.Descripcion);
                    cmd.Parameters.AddWithValue("Simbolo", obj.Simbolo);
                    cmd.Parameters.AddWithValue("IdSunat", obj.IdSunat);
                    cmd.Parameters.AddWithValue("AuditoriaUser", obj.AuditoriaUser);
                    cmd.Parameters.AddWithValue("AuditoriaFecha", obj.AuditoriaFecha);
                    cmd.CommandType = CommandType.StoredProcedure;
                    conexion.Open();
                    cmd.ExecuteNonQuery();
                }
                return StatusCode(StatusCodes.Status201Created, new { mensaje = "Adicionado" });
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

        public IActionResult crudUpdate(int  idUnidad, [FromBody] UnidadMedidaDto obj)
        {
            try
            {
                if (idUnidad == 0 || idUnidad != obj.IdUnidad) { return BadRequest(); }
                var objExiste = GetPorClave(idUnidad);
                if (obj.IdUnidad == 0) { return NotFound(); }

                using (SqlConnection conexion = new SqlConnection(cadenaConexion))
                {
                    SqlCommand cmd = new SqlCommand("UnidadMedida_Update", conexion);
                    cmd.Parameters.AddWithValue("IdUnidad", obj.IdUnidad);
                    cmd.Parameters.AddWithValue("Descripcion", obj.Descripcion is null ? DBNull.Value : obj.Descripcion);
                    cmd.Parameters.AddWithValue("Simbolo", obj.Simbolo is null ? DBNull.Value : obj.Simbolo);
                    cmd.Parameters.AddWithValue("IdSunat", obj.IdSunat is null ? DBNull.Value : obj.IdSunat);
                    cmd.Parameters.AddWithValue("AuditoriaUser", obj.AuditoriaUser);
                    cmd.Parameters.AddWithValue("AuditoriaFecha", obj.AuditoriaFecha);
                    cmd.CommandType = CommandType.StoredProcedure;
                    conexion.Open();
                    cmd.ExecuteNonQuery();
                }
                return NoContent();
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message });
            }
        }

        #endregion

        #region Actualizar => crudUpdate

        [HttpPatch("{idUnidad:int}")]
        [ProducesResponseType(StatusCodes.Status204NoContent)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]

        public IActionResult crudPartialUpdate(int idUnidad, JsonPatchDocument<UnidadMedidaDto> patchDto)
        {
            try
            {
                if (idUnidad == 0 || patchDto == null) { return BadRequest(); }
                
                var objExiste = GetPorClave(idUnidad);
                if (objExiste.IdUnidad == 0) { return NotFound(); }

                patchDto.ApplyTo(objExiste, ModelState);
                if (!ModelState.IsValid){ return BadRequest(ModelState); }
                
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
                var obj = GetPorClave(idUnidad);
                if (obj.IdUnidad == 0) { return NotFound(); }

                using (SqlConnection conexion = new SqlConnection(cadenaConexion))
                {
                    SqlCommand cmd = new SqlCommand("UnidadMedida_Delete", conexion);
                    cmd.Parameters.AddWithValue("IdUnidad", idUnidad);
                    cmd.CommandType = CommandType.StoredProcedure;
                    conexion.Open();
                    cmd.ExecuteNonQuery();
                }

                return NoContent();
            }
            catch (Exception ex)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new { mensaje = ex.Message });
            }
        }

        #endregion


        #region Métodos => IsExists_Name

        private List<UnidadMedidaDto> IsExists_Name(string name)
        {
            List<UnidadMedidaDto> listObj = new List<UnidadMedidaDto>();

            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM UnidadMedida WHERE Descripcion ='" + name + "'", conexion);
                cmd.CommandType = CommandType.Text;
                conexion.Open();

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        UnidadMedidaDto obj = new UnidadMedidaDto();

                        obj.IdUnidad = Convert.ToInt32(dr["IdUnidad"]);
                        obj.Descripcion = dr["Descripcion"].ToString();
                        obj.Simbolo = dr["Simbolo"].ToString();
                        obj.IdSunat = dr["IdSunat"].ToString();
                        obj.AuditoriaUser = dr["AuditoriaUser"].ToString();
                        obj.AuditoriaFecha = Convert.ToDateTime(dr["AuditoriaFecha"]);

                        listObj.Add(obj);
                    }
                }
            }

            return listObj;
        }

        #endregion

        #region Métodos => UnidadMedida por clave

        private UnidadMedidaDto GetPorClave(int id)
        {
            UnidadMedidaDto obj = new UnidadMedidaDto();

            try
            {
                using (SqlConnection conexion = new SqlConnection(cadenaConexion))
                {
                    SqlCommand cmd = new SqlCommand("SELECT * FROM UnidadMedida WHERE IdUnidad =" + id, conexion);
                    cmd.CommandType = CommandType.Text;
                    conexion.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            obj.IdUnidad = Convert.ToInt32(dr["IdUnidad"]);
                            obj.Descripcion = dr["Descripcion"].ToString();
                            obj.Simbolo = dr["Simbolo"].ToString();
                            obj.IdSunat = dr["IdSunat"].ToString();
                            obj.AuditoriaUser = dr["AuditoriaUser"].ToString();
                            obj.AuditoriaFecha = Convert.ToDateTime(dr["AuditoriaFecha"]);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                obj.IsError = true;
                obj.ErrorName = ex.Message;                
            }
            return obj;
        }

        #endregion

    }
} 