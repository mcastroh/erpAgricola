using Agricola_Models.DTO;
using Agricola_Models.Models;
using AutoMapper;
using ClosedXML.Excel;
using Microsoft.AspNetCore.Mvc;
using Rotativa.AspNetCore;
using System.Data;
using webAppAgricola.Services;
using webAppAgricola.Services.IServices;

namespace webAppAgricola.Controllers
{
    public class UnidadMedidaController : Controller
    {
        #region Variables

        private readonly IEntityServiceAPI<UnidadMedida> _servicioApi;
        private readonly IMapper _mapper;
        private readonly string _nameBaseApi = "api/UnidadMedida";

        #endregion

        #region Constructor 

        public UnidadMedidaController(IEntityServiceAPI<UnidadMedida> servicioApi, IMapper mapper)
        {
            _servicioApi = servicioApi;
            _mapper = mapper;
        }

        #endregion 

        #region HttpGet => Index 

        [HttpGet]
        public async Task<IActionResult> Index(string? buscar)
        {
            TempData["Mensaje"] = null;
            List<UnidadMedida> modelo = await _servicioApi.ObtenerEntityAll(_nameBaseApi);
            if (!String.IsNullOrEmpty(buscar)) { modelo = modelo.Where(x => x.Descripcion.ToLower()!.Contains(buscar.ToLower())).ToList(); }


            //ViewData["FiltroDescripcion"] = String.IsNullOrEmpty(filtro) ? "DescripcionAscendente" : "";

            //switch(filtro)
            //{
            //    case "DescripcionAscendente":
            //        modelo = modelo.OrderByDescending(x => x.Descripcion).ToList();
            //        break;
            //    default:
            //        modelo = modelo.OrderBy(x => x.Descripcion).ToList();
            //        break;
            //}

            return View(modelo);
        }

        #endregion

        #region HttpGet => RegistrarOrEditar

        [HttpGet]
        public async Task<IActionResult> RegistrarOrEditar(int idUnidad)
        {
            UnidadMedida modelo = new UnidadMedida();
            ViewBag.Accion = "Crear Unidad de Medida";

            if (idUnidad != 0)
            {
                modelo = await _servicioApi.ObtenerEntity(_nameBaseApi, idUnidad);
                ViewBag.Accion = "Editar Unidad de Medida";
            }

            return View(modelo);
        }

        #endregion

        #region HttpPost => GuardarCambios

        [HttpPost]
        public async Task<IActionResult> GuardarCambios(UnidadMedida modelo)
        {
            modelo.AuditoriaUser = "admin";
            modelo.AuditoriaFecha = DateTime.Now;
            bool respuesta = false;
            string mensajeCRUD = string.Empty;

            if (modelo.IdUnidad == 0)
            {
                respuesta = await _servicioApi.Guardar(_nameBaseApi, modelo);
                mensajeCRUD = "Unidad de Medida creada correctamente";
            }
            else
            {
                respuesta = await _servicioApi.Editar(_nameBaseApi, modelo.IdUnidad, modelo);
                mensajeCRUD = "Unidad de Medida actualizada correctamente";
            }

            if (respuesta)
            {
                TempData["Mensaje"] = mensajeCRUD;
                return RedirectToAction("Index");
            }
            else
            {
                return NoContent();
            }
        }

        #endregion

        #region HttpGet: Eliminar 

        [HttpGet]
        public async Task<ActionResult> Eliminar(int idUnidad)
        {
            if (idUnidad == 0) { return RedirectToAction("Index", "UnidadMedida"); }
            UnidadMedida modelo = await _servicioApi.ObtenerEntity(_nameBaseApi, idUnidad);
            return View(modelo);
        }

        #endregion

        #region HttpPost: EliminarEntity

        [HttpPost]
        public async Task<IActionResult> EliminarEntity(int IdUnidad)
        {
            bool respuesta = await _servicioApi.Eliminar(_nameBaseApi, IdUnidad);

            if (respuesta)
            {
                TempData["Mensaje"] = "Unidad de Medida eliminada correctamente";
                return RedirectToAction("Index");
            }
            else
            {
                return NoContent();
            }
        }

        #endregion

        #region Método  => Exportar Excel

        public async Task<IActionResult> ExportarExcel()
        {
            List<UnidadMedida> lista = await _servicioApi.ObtenerEntityAll(_nameBaseApi);
            List<UnidadMedidaDtoExcel> dtoExcel = new List<UnidadMedidaDtoExcel>();

            foreach (var item in lista)
            {
                UnidadMedidaDtoExcel dto = new UnidadMedidaDtoExcel();
                dto.IdUnidad = item.IdUnidad;
                dto.Descripcion = item.Descripcion;
                dto.Simbolo = item.Simbolo;
                dto.IdSunat = item.IdSunat;
                dtoExcel.Add(dto);
            }

            ConverterListToDataTable convert = new ConverterListToDataTable();
            DataTable dt = convert.ToDataTable(dtoExcel);

            using (var libro = new XLWorkbook())
            {
                dt.TableName = "Unidades de Medida";
                var hoja = libro.Worksheets.Add(dt);
                hoja.ColumnsUsed().AdjustToContents();

                using (var memoria = new MemoryStream())
                {
                    libro.SaveAs(memoria);
                    var nameExcel = string.Concat("Reporte Unidades de Medida ", DateTime.Now.ToString(), ".xlsx");
                    return File(memoria.ToArray(), "application/vnd.openxmlformats-officeddocument.spreadsheetml.sheet", nameExcel);
                }
            }
        }

        #endregion

        #region Método  => Listar PDF   

        public async Task<IActionResult> ListarPDF()
        {
            List<UnidadMedida> lista = await _servicioApi.ObtenerEntityAll(_nameBaseApi);
            List<UnidadMedidaDtoExcel> dtoExcel = new List<UnidadMedidaDtoExcel>();

            foreach (var item in lista)
            {
                UnidadMedidaDtoExcel dto = new UnidadMedidaDtoExcel();
                dto.IdUnidad = item.IdUnidad;
                dto.Descripcion = item.Descripcion;
                dto.Simbolo = item.Simbolo;
                dto.IdSunat = item.IdSunat;
                dtoExcel.Add(dto);
            }

            return new ViewAsPdf("ListarPDF", dtoExcel)
            {
                FileName = $"Unidad Medida {DateTime.Now}.pdf",
                PageOrientation = Rotativa.AspNetCore.Options.Orientation.Portrait,
                PageSize = Rotativa.AspNetCore.Options.Size.A4
            };
        }

        #endregion

        

    }
}