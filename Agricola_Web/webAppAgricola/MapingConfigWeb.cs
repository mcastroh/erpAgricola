using Agricola_Models.DTO;
using Agricola_Models.Models;
using AutoMapper;

namespace webAppAgricola
{
    public class MapingConfigWeb : Profile
    {
        public MapingConfigWeb()
        {
            CreateMap<Empresa, EmpresaDtoExcel>().ReverseMap();
            CreateMap<UnidadMedida, UnidadMedidaDtoExcel>().ReverseMap();
        }
    }
}