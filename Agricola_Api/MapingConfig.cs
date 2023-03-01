using Agricola_Models.DTO;
using Agricola_Models.Models;
using AutoMapper;

namespace Agricola_Api
{
    public class MapingConfig : Profile
    {
        public MapingConfig()
        {
            CreateMap<UnidadMedida, UnidadMedidaDto>().ReverseMap();
            CreateMap<UnidadMedida, UnidadMedidaDtoCreate>().ReverseMap();
            CreateMap<UnidadMedida, UnidadMedidaDtoUpdate>().ReverseMap();
            CreateMap<UnidadMedida, UnidadMedidaDtoExcel>().ReverseMap();

            CreateMap<Empresa, EmpresaDto>().ReverseMap();
        }
    }
}