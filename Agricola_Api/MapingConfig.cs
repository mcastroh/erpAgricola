using Agricola_Models.DTO;
using Agricola_Models.Models;
using AutoMapper;

namespace Agricola_Api
{
    public class MapingConfig : Profile
    {
        public MapingConfig()
        {
            CreateMap<UnidadMedida, UnidadMedidaDtoExcel>().ReverseMap();
            CreateMap<Empresa, EmpresaDtoExcel>().ReverseMap();
        }
    }
}