using Agricola_Models.Models;
using Newtonsoft.Json;
using webAppAgricola.Services.IServices;

namespace webAppAgricola.Services
{
    public class UnidadMedidaService : IUnidadMedidaService
    {
        public IList<UnidadMedida> GetlistUnidadMedida(string results)
        {
            IList<UnidadMedida> lista = new List<UnidadMedida>();

            if (results != null)
            {
                dynamic dyn = JsonConvert.DeserializeObject(results);

                foreach (var obj in dyn.resultado)
                {
                    UnidadMedida item = new UnidadMedida()
                    {
                        IdUnidad = obj.idUnidad,
                        Descripcion = obj.descripcion,
                        Simbolo = obj.simbolo,
                        IdSunat = obj.idSunat,
                        AuditoriaUser = obj.auditoriaUser == null ? string.Empty : obj.auditoriaUser,
                        AuditoriaFecha = obj.auditoriaFecha == null ? DateTime.Now : Convert.ToDateTime(obj.auditoriaFecha)
                    };

                    lista.Add(item);
                }
            }
            return lista;
        }


        public UnidadMedida GetUnidadMedida(string results)
        {
            UnidadMedida item = new UnidadMedida();

            if (results != null)
            {
                dynamic dyn = JsonConvert.DeserializeObject(results);

                item = new UnidadMedida()
                {
                    IdUnidad = dyn.resultado.idUnidad,
                    Descripcion = dyn.resultado.descripcion,
                    Simbolo = dyn.resultado.simbolo,
                    IdSunat = dyn.resultado.idSunat,
                    AuditoriaUser = dyn.resultado.auditoriaUser == null ? string.Empty : dyn.resultado.auditoriaUser,
                    AuditoriaFecha = dyn.resultado.auditoriaFecha == null ? DateTime.Now : Convert.ToDateTime(dyn.resultado.auditoriaFecha)
                };
            }

            return item;
        }

    }
}
