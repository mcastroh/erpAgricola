using Agricola_Models.Models;
using Newtonsoft.Json;
using System.Text;
using webAppAgricola.Services.IServices;

namespace webAppAgricola.Services
{
    public class EntityServiceAPI<T> : IEntityServiceAPI<T> where T : class
    {
        private static string _usuario;
        private static string _clave;
        private static string _baseUrl;
        private static string _token;

        #region Constructor 

        public EntityServiceAPI()
        {
            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
            _usuario = builder.GetSection("ApiSettings:usuario").Value;
            _clave = builder.GetSection("ApiSettings:clave").Value;
            _baseUrl = builder.GetSection("ApiSettings:baseUrl").Value;
        }

        #endregion

        #region ObtenerEntityAll

        public async Task<List<T>> ObtenerEntityAll(string nameAPI)
        {
            List<T> lista = new List<T>();

            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            //var response = await cliente.GetAsync("api/Empresa");
            var response = await cliente.GetAsync(nameAPI);

            if (response.IsSuccessStatusCode)
            {
                var json_respuesta = await response.Content.ReadAsStringAsync();
                var resultado = JsonConvert.DeserializeObject<ApiResponse<T>>(json_respuesta);
                lista = resultado.Resultado.ToList();
            }

            return lista;
        }

        #endregion  

        #region ObtenerEntity

        public async Task<T> ObtenerEntity(string nameAPI, int id)
        {
            T objeto = default(T);

            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var response = await cliente.GetAsync(nameAPI + "/" + id);

            if (response.IsSuccessStatusCode)
            {
                var json_respuesta = await response.Content.ReadAsStringAsync();
                var resultado = JsonConvert.DeserializeObject<ApiResponse<T>>(json_respuesta);
                objeto = resultado.ResultadoObj;
            }

            return objeto;
        }

        #endregion

        #region Editar

        public async Task<bool> Editar(string nameAPI, int id, T objeto)
        {
            bool respuesta = false;
            
            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var content = new StringContent(JsonConvert.SerializeObject(objeto), Encoding.UTF8, "application/json");
            var response = await cliente.PutAsync(nameAPI + $"/{id}", content);

            if (response.IsSuccessStatusCode)
            {
                respuesta = true;
            }

            return respuesta;
        }

        #endregion

        #region Eliminar

        public async Task<bool> Eliminar(string nameAPI, int id)
        {
            bool respuesta = false;

            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            //var response = await cliente.DeleteAsync($"api/UnidadMedida/{idUnidad}");
            var response = await cliente.DeleteAsync(nameAPI + $"/{id}");

            if (response.IsSuccessStatusCode)
            {
                respuesta = true;
            }

            return respuesta;
        }

        #endregion

        #region Guardar

        public async Task<bool> Guardar(string nameAPI, T objeto)
        {
            bool respuesta = false;
            
            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var content = new StringContent(JsonConvert.SerializeObject(objeto), Encoding.UTF8, "application/json");
            var response = await cliente.PostAsync(nameAPI + "/", content);

            if (response.IsSuccessStatusCode)
            {
                respuesta = true;
            }

            return respuesta;
        }

        #endregion

    }
}