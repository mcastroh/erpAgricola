using Agricola_Models.Models;
using Microsoft.AspNetCore.Mvc;
using System.Net.Http.Headers;
using webAppAgricola.Services;
using webAppAgricola.Services.IServices;

namespace webAppAgricola.Controllers
{
    public class UnidadMedida_InicialController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private string baseURL = "https://localhost:7247/";

        public UnidadMedida_InicialController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        #region Index 

        public async Task<IActionResult> Index()
        {
            //IList<UnidadMedida> lista = new List<UnidadMedida>();

            using (var cliente = new HttpClient())
            {
                cliente.BaseAddress = new Uri(baseURL);
                cliente.DefaultRequestHeaders.Accept.Clear();
                cliente.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage getData = await cliente.GetAsync("api/UnidadMedida");

                if (getData.IsSuccessStatusCode)
                {
                    string results = await getData.Content.ReadAsStringAsync();

                    UnidadMedidaService service = new UnidadMedidaService();
                    var lista = service.GetlistUnidadMedida(results);

                    //dynamic dyn = JsonConvert.DeserializeObject(results);

                    //foreach (var obj in dyn.resultado)
                    //{
                    //    UnidadMedida item = new UnidadMedida()
                    //    {
                    //        IdUnidad = obj.idUnidad,
                    //        Descripcion = obj.descripcion,
                    //        Simbolo = obj.simbolo,
                    //        IdSunat = obj.idSunat,
                    //        AuditoriaUser = obj.auditoriaUser == null ? string.Empty : obj.auditoriaUser,
                    //        AuditoriaFecha = obj.auditoriaFecha == null ? DateTime.Now : Convert.ToDateTime(obj.auditoriaFecha)
                    //    };

                    //    lista.Add(item);
                    //}

                    ViewData.Model = lista;
                }
                else
                {
                    Console.WriteLine("Error al llamar al web Api");
                }

                return View();
            }
        }

        #endregion


        #region GET: Registrar 

        [HttpGet]
        public ActionResult Registrar()
        {
            return View();
        }

        #endregion

        #region POST: Registrar 

        [HttpPost]
        public async Task<ActionResult> Registrar(UnidadMedida unidadMedida)
        {
            unidadMedida.AuditoriaUser = "admin";
            unidadMedida.AuditoriaFecha = DateTime.Now;

            using (var cliente = new HttpClient())
            {
                cliente.BaseAddress = new Uri(baseURL + "api/UnidadMedida");
                cliente.DefaultRequestHeaders.Accept.Clear();
                cliente.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage getData = await cliente.PostAsJsonAsync<UnidadMedida>("UnidadMedida", unidadMedida);

                if (getData.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index", "UnidadMedida");
                }
                else
                {
                    Console.WriteLine("Error al llamar al web Api");
                }
            }

            return View();
        }

        #endregion


        #region GET: Editar 

        [HttpGet]
        public async Task<ActionResult> Editar(int? IdUnidad)
        {
            if (IdUnidad == null)
            {
                return RedirectToAction("Index", "UnidadMedida");
            }

            using (var cliente = new HttpClient())
            {
                cliente.BaseAddress = new Uri(baseURL);
                cliente.DefaultRequestHeaders.Accept.Clear();
                cliente.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage getData = await cliente.GetAsync("api/UnidadMedida/" + IdUnidad);

                if (getData.IsSuccessStatusCode)
                {
                    string results = await getData.Content.ReadAsStringAsync();
                    ViewData.Model = GetObj(results); ;
                }
                else
                {
                    Console.WriteLine("Error al llamar al web Api");
                    return RedirectToAction("Index", "UnidadMedida");
                }

                return View();
            }
        }

        #endregion

        #region POST: Editar 

        [HttpPost]
        public ActionResult Editar(UnidadMedida unidadMedida)
        {
            unidadMedida.AuditoriaUser = "admin";
            unidadMedida.AuditoriaFecha = DateTime.Now;

            using (var cliente = new HttpClient())
            {
                var uri = new Uri(baseURL + "api/UnidadMedida/" + unidadMedida.IdUnidad);
                HttpResponseMessage response = cliente.PutAsJsonAsync(uri, unidadMedida).Result;
                 
                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index", "UnidadMedida");
                }
                else
                {
                    Console.WriteLine("Error al llamar al web Api");
                }
            }

            return View(unidadMedida);

        }

        #endregion


        #region GET: Eliminar 

        [HttpGet]
        public async Task<ActionResult> Eliminar(int? IdUnidad)
        {
            if (IdUnidad == null)
            {
                return RedirectToAction("Index", "UnidadMedida");
            }

            using (var cliente = new HttpClient())
            {
                cliente.BaseAddress = new Uri(baseURL);
                cliente.DefaultRequestHeaders.Accept.Clear();
                cliente.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                HttpResponseMessage getData = await cliente.GetAsync("api/UnidadMedida/" + IdUnidad);

                if (getData.IsSuccessStatusCode)
                {
                    string results = await getData.Content.ReadAsStringAsync();
                    ViewData.Model = GetObj(results);
                }
                else
                {
                    Console.WriteLine("Error al llamar al web Api");
                    return RedirectToAction("Index", "UnidadMedida");
                }
            }

            return View();
        }

        #endregion

        #region POST: Eliminar 

        [HttpPost]
        public async Task<ActionResult> EliminarUnidadMedida(int? IdUnidad)
        {
            if (IdUnidad == null)
            {
                return RedirectToAction("Index", "UnidadMedida");
            }

            using (var cliente = new HttpClient())
            {
                var uri = new Uri(baseURL + "api/UnidadMedida/" + IdUnidad);
                HttpResponseMessage response = await cliente.DeleteAsync(uri);

                if (response.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index", "UnidadMedida");
                }
                else
                {
                    Console.WriteLine("Error al llamar al web Api");
                }
            }

            return View();
        }

        #endregion

         

        private UnidadMedida GetObj(string results)
        {
            UnidadMedidaService service = new UnidadMedidaService();
            return service.GetUnidadMedida(results);            
        }

    }
}