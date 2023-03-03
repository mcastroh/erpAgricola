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
    public class EmpresaController : Controller
    {
        #region Variables

        private readonly IEntityServiceAPI<Empresa> _servicioApi;
        private readonly IMapper _mapper;
        private readonly string _nameBaseApi = "api/Empresa";

        #endregion

        #region Constructor   

        public EmpresaController(IEntityServiceAPI<Empresa> servicioApi, IMapper mapper)
        {
            _servicioApi = servicioApi;
            _mapper = mapper;
        }

        #endregion 

        #region HttpGet => Index 

        [HttpGet]
        public async Task<IActionResult> Index()
        {
            TempData["Mensaje"] = null;
            List<Empresa> modelo = await _servicioApi.ObtenerEntityAll(_nameBaseApi);
            return View(modelo);
        }

        #endregion

        #region HttpGet => RegistrarOrEditar

        [HttpGet]
        public async Task<IActionResult> RegistrarOrEditar(int idEmpresa)
        {
            Empresa modelo = new Empresa();            
            ViewBag.Accion = "Crear Empresa";

            if (idEmpresa != 0)
            {
                modelo = await _servicioApi.ObtenerEntity(_nameBaseApi, idEmpresa);
                ViewBag.Accion = "Editar Empresa";
            }

            return View(modelo);
        }

        #endregion

        #region HttpPost => GuardarCambios

        [HttpPost]
        public async Task<IActionResult> GuardarCambios(Empresa modelo)
        {
            modelo.AuditoriaUser = "admin";
            modelo.AuditoriaFecha = DateTime.Now;
            bool respuesta = false;
            string mensajeCRUD = string.Empty;

            if (modelo.IdEmpresa == 0)
            {
                respuesta = await _servicioApi.Guardar(_nameBaseApi, modelo);
                mensajeCRUD = "Empresa creada correctamente";
            }
            else
            {
                respuesta = await _servicioApi.Editar(_nameBaseApi, modelo.IdEmpresa, modelo);
                mensajeCRUD = "Empresa actualizada correctamente";
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
        public async Task<ActionResult> Eliminar(int idEmpresa)
        {
            if (idEmpresa == 0) { return RedirectToAction("Index", "Empresa"); }
            Empresa modelo = await _servicioApi.ObtenerEntity(_nameBaseApi, idEmpresa);
            return View(modelo);
        }

        #endregion

        #region HttpPost: EliminarEntity

        [HttpPost]
        public async Task<IActionResult> EliminarEntity(int idEmpresa)
        {
            bool respuesta = await _servicioApi.Eliminar(_nameBaseApi, idEmpresa);

            if (respuesta)
            {
                TempData["Mensaje"] = "Empresa eliminada correctamente";
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
            List<Empresa> lista = await _servicioApi.ObtenerEntityAll(_nameBaseApi);
            List<EmpresaDtoExcel> dtoExcel = new List<EmpresaDtoExcel>();

            foreach (var item in lista)
            {
                EmpresaDtoExcel dto = new EmpresaDtoExcel();
                dto.IdEmpresa= item.IdEmpresa;
                dto.NumeroRUC = item.NumeroRUC; 
                dto.RazonSocial= item.RazonSocial;
                dto.Direccion = item.Direccion;
                dtoExcel.Add(dto);
            }

            ConverterListToDataTable convert = new ConverterListToDataTable();
            DataTable dt = convert.ToDataTable(dtoExcel);

            using (var libro = new XLWorkbook())
            {
                dt.TableName = "Empresas";
                var hoja = libro.Worksheets.Add(dt);
                hoja.ColumnsUsed().AdjustToContents();

                using (var memoria = new MemoryStream())
                {
                    libro.SaveAs(memoria);
                    var nameExcel = string.Concat("Empresas ", DateTime.Now.ToString(), ".xlsx");
                    return File(memoria.ToArray(), "application/vnd.openxmlformats-officeddocument.spreadsheetml.sheet", nameExcel);
                }
            }
        }

        #endregion

        #region Método  => Listar PDF   

        public async Task<IActionResult> ListarPDF()
        {
            List<Empresa> lista = await _servicioApi.ObtenerEntityAll(_nameBaseApi);
            List<EmpresaDtoExcel> dtoExcel = new List<EmpresaDtoExcel>();

            foreach (var item in lista)
            {
                EmpresaDtoExcel dto = new EmpresaDtoExcel();
                dto.IdEmpresa = item.IdEmpresa;
                dto.NumeroRUC = item.NumeroRUC;
                dto.RazonSocial = item.RazonSocial;
                dto.Direccion= item.Direccion;
                dtoExcel.Add(dto);
            }

            return new ViewAsPdf("ListarPDF", dtoExcel)
            {
                FileName = $"Empresa {DateTime.Now}.pdf",
                PageOrientation = Rotativa.AspNetCore.Options.Orientation.Portrait,
                PageSize = Rotativa.AspNetCore.Options.Size.A4
            };
        }

        #endregion


    }
}