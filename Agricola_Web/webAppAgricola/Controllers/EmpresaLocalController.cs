using Agricola_Models.DTO;
using Agricola_Models.Models;
using AutoMapper;
using ClosedXML.Excel;
using DocumentFormat.OpenXml.InkML;
using Microsoft.AspNetCore.Mvc;
using Rotativa.AspNetCore;
using System.Collections.Generic;
using System.Data;
using webAppAgricola.Services;
using webAppAgricola.Services.IServices;

namespace webAppAgricola.Controllers
{
    public class EmpresaLocalController : Controller
    {
        #region Variables

        private readonly IEntityServiceAPI<EmpresaLocal> _servicioApi;
        private readonly IEntityServiceAPI<Empresa> _servicioEmpresaApi;
        private readonly IMapper _mapper;
        private readonly string _nameBaseApi = "api/EmpresaLocal";

        #endregion

        #region Constructor   

        public EmpresaLocalController(IEntityServiceAPI<EmpresaLocal> servicioApi, IEntityServiceAPI<Empresa> servicioEmpresaApi, IMapper mapper)
        {
            _servicioApi = servicioApi;
            _servicioEmpresaApi = servicioEmpresaApi;
            _mapper = mapper;
        }

        #endregion 

        #region HttpGet => Index 

        [HttpGet]
        public async Task<IActionResult> Index(int idEmpresa)
        {
            var modeloEmpresa = await _servicioEmpresaApi.ObtenerEntity("api/Empresa", idEmpresa);
 
            ViewBag.RazonSocial= modeloEmpresa.RazonSocial;
            ViewBag.EmpresaId = modeloEmpresa.IdEmpresa;

            List<EmpresaLocal> modelo = (await _servicioApi.ObtenerEntityAll(_nameBaseApi)).Where(x=> x.IdEmpresa == idEmpresa).ToList();
            return View(modelo);
        }

        #endregion


        #region HttpGet => RegistrarOrEditar

        [HttpGet]
        public async Task<IActionResult> RegistrarOrEditar(int idEmpresa, int idLocal)
        {
            EmpresaLocal modelo = new EmpresaLocal();

            modelo.IdEmpresa = idEmpresa;
            
            ViewBag.Accion = "Crear Local";

            if (idLocal != 0)
            {
                modelo = await _servicioApi.ObtenerEntity(_nameBaseApi, idLocal);
                ViewBag.Accion = "Editar Local";
            }

            return View(modelo);
        }

        #endregion

        #region HttpPost => GuardarCambios

        [HttpPost]
        public async Task<IActionResult> GuardarCambios(EmpresaLocal modelo)
        {
            int idEmpresa = modelo.IdEmpresa;
            string mensajeCRUD = string.Empty;
            var empresa = await _servicioEmpresaApi.ObtenerEntity("api/Empresa", idEmpresa);
            
            if (empresa == null) { return NoContent(); }
            
            bool respuesta = false;
            modelo.Empresa = null;

            if (modelo.IdLocal == 0)
            {
                respuesta = await _servicioApi.Guardar(_nameBaseApi, modelo);
                mensajeCRUD = "Local creado correctamente";
            }
            else
            {
                respuesta = await _servicioApi.Editar(_nameBaseApi, modelo.IdLocal, modelo);
                mensajeCRUD = "Local actualizado correctamente";
            }

            if (respuesta)
            {
                TempData["Mensaje"] = mensajeCRUD;
                return RedirectToRoute(new { action = "Index", controller = "EmpresaLocal", idEmpresa });
            }
            else
            {
                return NoContent();
            }
        }

        #endregion

        #region HttpGet: Eliminar 

        [HttpGet]
        public async Task<ActionResult> Eliminar(int idEmpresa, int idLocal)
        {
            if (idLocal == 0) { return RedirectToAction("Index", "EmpresaLocal"); }
            EmpresaLocal modelo = await _servicioApi.ObtenerEntity(_nameBaseApi, idLocal);
            return View(modelo);
        }

        #endregion

        #region HttpPost: EliminarEntity

        [HttpPost]
        public async Task<IActionResult> EliminarEntity(int idEmpresa, int idLocal)
        {
            bool respuesta = await _servicioApi.Eliminar(_nameBaseApi, idLocal);

            if (respuesta)
            {
                TempData["Mensaje"] = "Local eliminado correctamente";
                return RedirectToRoute(new { action = "Index", controller = "EmpresaLocal", idEmpresa });
            }
            else
            {
                return NoContent();
            }
        }

        #endregion

        #region Método  => Exportar Excel

        public async Task<IActionResult> ExportarExcel(int idEmpresa, string razonSocial)
        {
            List<EmpresaLocal> lista = (await _servicioApi.ObtenerEntityAll(_nameBaseApi)).Where(x => x.IdEmpresa == idEmpresa).ToList();

            List<EmpresaLocalDtoExcel> dtoExcel = new List<EmpresaLocalDtoExcel>();

            //var adtoExcel = _mapper.Map<EmpresaLocalDtoExcel>(lista);

            foreach (var item in lista)
            {
                EmpresaLocalDtoExcel dto = new EmpresaLocalDtoExcel();
                dto.IdLocal= item.IdLocal;
                dto.RazonSocial = item.RazonSocial;
                dto.Direccion = item.Direccion;
                dtoExcel.Add(dto);
            }

            ConverterListToDataTable convert = new ConverterListToDataTable();
            DataTable dt = convert.ToDataTable(dtoExcel);

            using (var libro = new XLWorkbook())
            {
                dt.TableName = "Locales";
                var hoja = libro.Worksheets.Add(dt);
                hoja.ColumnsUsed().AdjustToContents();

                using (var memoria = new MemoryStream())
                {
                    libro.SaveAs(memoria);
                    var nameExcel = string.Concat("Locales ", DateTime.Now.ToString(), ".xlsx");
                    return File(memoria.ToArray(), "application/vnd.openxmlformats-officeddocument.spreadsheetml.sheet", nameExcel);
                }
            }
        }

        #endregion

        #region Método  => Listar PDF   

        public async Task<IActionResult> ListarPDF(int idEmpresa, string razonSocial)
        {
            List<EmpresaLocal> lista = (await _servicioApi.ObtenerEntityAll(_nameBaseApi)).Where(x => x.IdEmpresa == idEmpresa).ToList();            
            List<EmpresaLocalDtoExcel> dtoExcel = new List<EmpresaLocalDtoExcel>();
            ViewBag.RazonSocial = razonSocial;

            foreach (var item in lista)
            {
                EmpresaLocalDtoExcel dto = new EmpresaLocalDtoExcel();
                dto.IdLocal= item.IdLocal;
                dto.RazonSocial = item.RazonSocial;
                dto.Direccion = item.Direccion;
                dtoExcel.Add(dto);
            }

            //return View(dtoExcel);

            return new ViewAsPdf("ListarPDF", dtoExcel)
            {
                FileName = $"EmpresaLocales {DateTime.Now}.pdf",
                PageOrientation = Rotativa.AspNetCore.Options.Orientation.Portrait,
                PageSize = Rotativa.AspNetCore.Options.Size.A4
            };
        }

        #endregion



    }
}