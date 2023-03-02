using Agricola_Models.DTO;
using Agricola_Models.Models;
using Newtonsoft.Json;
using System;
using System.Text;
using webAppAgricola.Services.IServices;

namespace webAppAgricola.Services
{
    public class UnidadMedidaService_API : IUnidadMedidaService_API
    {
        private static string _usuario;
        private static string _clave;
        private static string _baseUrl;
        private static string _token;

        #region Constructor 

        public UnidadMedidaService_API()
        {
            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();

            _usuario = builder.GetSection("ApiSettings:usuario").Value;
            _clave = builder.GetSection("ApiSettings:clave").Value;
            _baseUrl = builder.GetSection("ApiSettings:baseUrl").Value;
        }

        #endregion 

        #region Autenticar

        public async Task Autenticar()
        {
            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var credenciales = new Credencial() { usuario = _usuario, clave = _clave };
            var content = new StringContent(JsonConvert.SerializeObject(credenciales), Encoding.UTF8, "application/json");
            var response = await cliente.PostAsync("api/Autenticacion/Validar", content);
            var json_respuesta = await response.Content.ReadAsStringAsync();
            var resultado = JsonConvert.DeserializeObject<ResultadoCredencial>(json_respuesta);
            _token = resultado.token;
        }

        #endregion 

        #region Lista

        public async Task<List<UnidadMedidaDto>> Lista()
        {
            List<UnidadMedidaDto> lista = new List<UnidadMedidaDto>();

            //await Autenticar();

            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            //cliente.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", _token);
            var response = await cliente.GetAsync("api/UnidadMedida");

            if (response.IsSuccessStatusCode)
            {
                var json_respuesta = await response.Content.ReadAsStringAsync();
                var resultado = JsonConvert.DeserializeObject<ApiResponse>(json_respuesta);
                lista = resultado.Resultado.ToList();
            }

            return lista;
        }

        #endregion

        #region Obtener

        public async Task<UnidadMedidaDto> Obtener(int idUnidad)
        {
            UnidadMedidaDto objeto = new UnidadMedidaDto();

            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var response = await cliente.GetAsync($"api/UnidadMedida/{idUnidad}");

            if (response.IsSuccessStatusCode)
            {
                var json_respuesta = await response.Content.ReadAsStringAsync();
                var resultado = JsonConvert.DeserializeObject<ApiResponse>(json_respuesta);
                objeto = resultado.ResultadoObj;
            }

            return objeto;
        }

        #endregion

        #region Guardar

        public async Task<bool> Guardar(UnidadMedida objeto)
        {
            bool respuesta = false;
            objeto.AuditoriaUser = "admin";
            objeto.AuditoriaFecha = DateTime.Now;

            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var content = new StringContent(JsonConvert.SerializeObject(objeto), Encoding.UTF8, "application/json");
            var response = await cliente.PostAsync("api/UnidadMedida/", content);

            if (response.IsSuccessStatusCode)
            {
                respuesta = true;
            }

            return respuesta;
        }

        #endregion

        #region Editar

        public async Task<bool> Editar(UnidadMedida objeto)
        {
            bool respuesta = false;
            objeto.AuditoriaUser = "admin";
            objeto.AuditoriaFecha = DateTime.Now;

            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var content = new StringContent(JsonConvert.SerializeObject(objeto), Encoding.UTF8, "application/json");
            var response = await cliente.PutAsync($"api/UnidadMedida/{objeto.IdUnidad}", content);

            if (response.IsSuccessStatusCode)
            {
                respuesta = true;
            }

            return respuesta;
        }

        #endregion

        #region Eliminar

        public async Task<bool> Eliminar(int idUnidad)
        {
            bool respuesta = false;

            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var response = await cliente.DeleteAsync($"api/UnidadMedida/{idUnidad}");

            if (response.IsSuccessStatusCode)
            {
                respuesta = true;
            }

            return respuesta;
        }

        #endregion

    }
}