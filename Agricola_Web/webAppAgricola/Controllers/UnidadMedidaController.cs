using Agricola_Models.DTO;
using Agricola_Models.Models;
using ClosedXML.Excel;
using Microsoft.AspNetCore.Mvc;
using Rotativa.AspNetCore;
using System.Data;
using webAppAgricola.Services;
using webAppAgricola.Services.IServices;

//
// para las vistas buscar
// https://getbootstrap.com/docs/5.0/components/card/
//

namespace webAppAgricola.Controllers
{
    public class UnidadMedidaController : Controller
    {
        #region Variables

        private readonly IUnidadMedidaService_API _servicioApi;

        #endregion

        #region Constructor 

        public UnidadMedidaController(IUnidadMedidaService_API servicioApi)
        {
            _servicioApi = servicioApi;
        }

        #endregion 

        #region HttpGet => Index 

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            List<UnidadMedidaDto> modelo = await _servicioApi.Lista();

            return View(modelo);
        }

        #endregion

        #region HttpGet => RegistrarOrEditar

        [HttpGet]
        public async Task<IActionResult> RegistrarOrEditar(int idUnidad)
        {
            UnidadMedidaDto modelo = new UnidadMedidaDto();
            ViewBag.Accion = "Crear unidad de medida";

            if (idUnidad != 0)
            {
                modelo = await _servicioApi.Obtener(idUnidad);
                ViewBag.Accion = "Editar unidad de medida";
            }

            return View(modelo);
        }

        #endregion

        #region HttpPost => GuardarCambios

        [HttpPost]
        public async Task<IActionResult> GuardarCambios(UnidadMedida obj)
        {
            bool respuesta = false;

            if (obj.IdUnidad == 0)
            {
                respuesta = await _servicioApi.Guardar(obj);
            }
            else
            {
                respuesta = await _servicioApi.Editar(obj);
            }

            if (respuesta)
            {
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
            if (idUnidad == 0)
            {
                return RedirectToAction("Index", "UnidadMedida");
            }

            UnidadMedidaDto modelo = await _servicioApi.Obtener(idUnidad);
            return View(modelo);
        }

        #endregion

        #region HttpPost: EliminarUnidadMedida

        [HttpPost]
        public async Task<IActionResult> EliminarUnidadMedida(int IdUnidad)
        {
            bool respuesta = await _servicioApi.Eliminar(IdUnidad);

            if (respuesta)
            {
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
            List<UnidadMedidaDto> lista = await _servicioApi.Lista();
            List<UnidadMedidaDtoExcel> dtoExcel = new List<UnidadMedidaDtoExcel>();

            foreach (var item in lista)
            {
                UnidadMedidaDtoExcel dto = new UnidadMedidaDtoExcel();
                dto.IdUnidad = item.IdUnidad;
                dto.Descripcion = item.Descripcion;
                dto.Simbolo = item.Simbolo;
                dto.IdSunat = item.IdSunat;
                dto.AuditoriaFecha = item.AuditoriaFecha;
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

        // Listar PDF   => https://www.youtube.com/watch?v=VkHcG24nM8U
        // Rotativa     => https://wkhtmltopdf.org/downloads.html

        public async Task<IActionResult> ListarPDF()
        {
            List<UnidadMedidaDto> lista = await _servicioApi.Lista();
            List<UnidadMedidaDtoExcel> dtoExcel = new List<UnidadMedidaDtoExcel>();

            foreach (var item in lista)
            {
                UnidadMedidaDtoExcel dto = new UnidadMedidaDtoExcel();
                dto.IdUnidad = item.IdUnidad;
                dto.Descripcion = item.Descripcion;
                dto.Simbolo = item.Simbolo;
                dto.IdSunat = item.IdSunat;
                dto.AuditoriaFecha = item.AuditoriaFecha;
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