using Agricola_Models.DTO;
using Agricola_Models.Models;
using Microsoft.CodeAnalysis.Semantics;
using Newtonsoft.Json;
using System.Linq.Expressions;
using webAppAgricola.Services.IServices;

namespace webAppAgricola.Services
{
    public class EntityService_API<T> : IEntityService_API<T> where T : class
    {
        private static string _usuario;
        private static string _clave;
        private static string _baseUrl;
        private static string _token;

        #region Constructor 

        public EntityService_API()
        {
            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
            _usuario = builder.GetSection("ApiSettings:usuario").Value;
            _clave = builder.GetSection("ApiSettings:clave").Value;
            _baseUrl = builder.GetSection("ApiSettings:baseUrl").Value;
        }

        #endregion

        #region Toda la Lista

        public async Task<List<T>> ObtenerEntityAll()
        {
            List<T> lista = new List<T>();

            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var response = await cliente.GetAsync("api/Empresa");

            if (response.IsSuccessStatusCode)
            {
                var json_respuesta = await response.Content.ReadAsStringAsync();
                var resultado = JsonConvert.DeserializeObject<ApiResponseBase<T>>(json_respuesta);
                lista = resultado.Resultado.ToList();
            }

            return lista;
        }

        #endregion  

        #region Lista

        public async Task<T> ObtenerEntity(int id)
        {
            T objeto = default(T);
           
            var cliente = new HttpClient();
            cliente.BaseAddress = new Uri(_baseUrl);
            var response = await cliente.GetAsync("api/Empresa/" + id);

            if (response.IsSuccessStatusCode)
            {
                var json_respuesta = await response.Content.ReadAsStringAsync();
                var resultado = JsonConvert.DeserializeObject<ApiResponseBase<T>>(json_respuesta);
                objeto = resultado.ResultadoObj;
            }

            return objeto;
        }

        #endregion


        



        //public Task<bool> Editar(T objeto)
        //{
        //    throw new NotImplementedException();
        //}

        //public Task<bool> Eliminar(int id)
        //{
        //    throw new NotImplementedException();
        //}

        //public Task<bool> Guardar(T objeto)
        //{
        //    throw new NotImplementedException();
        //}




    }
}