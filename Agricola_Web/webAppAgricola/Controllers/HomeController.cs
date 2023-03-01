using Agricola_Models.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Data;
using System.Diagnostics;
using System.Net.Http.Headers;
using webAppAgricola.Models;

namespace webAppAgricola.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private string baseURL = "https://localhost:7247";

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public async Task<IActionResult> Index()
        {
            //IList<UnidadMedida> lista = new List<UnidadMedida>();

            //using (var cliente = new HttpClient())
            //{
            //    cliente.BaseAddress = new Uri(baseURL);
            //    cliente.DefaultRequestHeaders.Accept.Clear();
            //    cliente.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            //    HttpResponseMessage getData = await cliente.GetAsync("api/UnidadMedida");

            //    if (getData.IsSuccessStatusCode)
            //    {
            //        string results = await getData.Content.ReadAsStringAsync();

            //        dynamic dyn = JsonConvert.DeserializeObject(results);

            //        foreach (var obj in dyn.resultado)
            //        {
            //            UnidadMedida item = new UnidadMedida()
            //            {
            //                IdUnidad = obj.idUnidad,
            //                Descripcion = obj.descripcion,
            //                Simbolo = obj.simbolo,
            //                IdSunat = obj.idSunat,
            //                AuditoriaUser = obj.auditoriaUser == null ? string.Empty : obj.auditoriaUser,
            //                AuditoriaFecha = obj.auditoriaFecha == null ? DateTime.Now : Convert.ToDateTime(obj.auditoriaFecha)
            //            };
                        
            //            lista.Add(item);
            //        }

            //        ViewData.Model = lista;
            //    }
            //    else
            //    {
            //        Console.WriteLine("Error al llamar al web Api");
            //    }

                return View();
            //}
        }

        //int IdUnidad = obj.idUnidad;
        //string Descripcion = obj.descripcion;
        //string Simbolo = obj.simbolo;
        //string IdSunat = obj.idSunat;
        //string AuditoriaUser = obj.auditoriaUser == null ? string.Empty : obj.auditoriaUser;
        //DateTime AuditoriaFecha = obj.auditoriaFecha == null ? DateTime.Now : Convert.ToDateTime(obj.auditoriaFecha);
        //dt = JsonConvert.DeserializeObject<DataTable>(dyn.resultado);

        // dt = (DataTable)JsonConvert.DeserializeObject(dyn.resultado, (typeof(DataTable)));


        //var json = AddSquareBrackets(results);

        //dt = ConvertJsonToDataTable(json);



        //results = "[" + results + "]";
        //dt = JsonConvert.DeserializeObject<DataTable>(results);



        // dt = (DataTable)JsonConvert.DeserializeObject(results, (typeof(DataTable)));


        //JObject jObj = JObject.Parse(results);
        //DataTable xdt = jObj["response"]["body"]["price"].ToObject<DataTable>();



        //var xxtable = JsonConvert.DeserializeAnonymousType(results, new { Makes = default(DataTable) }).Makes;



        //var jObject = JsonConvert.DeserializeObject<JObject>(results).Root.ToList();

        //var table = JsonConvert.DeserializeObject<DataSet>(results);

        //dt = JsonConvert.DeserializeObject<DataTable>(results);



        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        private static string AddSquareBrackets(string json)
        {
            return $"[{json}]";
        }

        private static DataTable ConvertJsonToDataTable(string jsonData)
        {
            try
            {
                return JsonConvert.DeserializeObject<DataTable>(jsonData);
            }
            catch
            {
                return null;
            }
        }



        //public DataTable GetDataTableFromJsonString(string json)
        //{
        //    var jsonLinq = JObject.Parse(json);

        //    // Find the first array using Linq
        //    var srcArray = jsonLinq.Descendants().Where(d => dis JArray).First();
        //    var trgArray = new JArray();
        //    foreach (JObject rowin srcArray.Children<JObject>())
        //    {
        //        var cleanRow = new JObject();
        //        foreach (JProperty columnin row.Properties())
        //        {
        //            // Only include JValue types
        //            if (column.Valueis JValue)
        //    {
        //                cleanRow.Add(column.Name, column.Value);
        //            }
        //        }
        //        trgArray.Add(cleanRow);
        //    }

        //    return JsonConvert.DeserializeObject<DataTable>(trgArray.ToString());
        //}

    }
}