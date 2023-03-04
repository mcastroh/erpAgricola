using Agricola_Api;
using Agricola_Api.DataBase;
using Agricola_Api.Repository;
using Agricola_Api.Repository.IRepository;
using Agricola_Models.Models;
using Microsoft.EntityFrameworkCore;
using System.ComponentModel;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers().AddNewtonsoftJson();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddDbContext<ApplicationDbContext>(option =>
{
    option.UseSqlServer(builder.Configuration.GetConnectionString("CnSqlServer"));
});

// MACH: AutoMapper
builder.Services.AddAutoMapper(typeof(MapingConfig));

// MACH: Apis en minúsculas
builder.Services.AddRouting(routing => routing.LowercaseUrls = true);


builder.Services.AddScoped(typeof(IRepository<>), typeof(Repository<>));
//builder.Services.AddScoped<IEmpresaLocalRepository, EmpresaLocalRepository>();

//builder.Services.AddScoped<IUnidadMedidaRepository, UnidadMedidaRepository>();
//builder.Services.AddScoped<IEmpresaRepository, EmpresaRepository>();


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();




// Notas:
// se incluye en    =>  builder.Services.AddControllers();
//                  =>  builder.Services.AddControllers().AddNewtonsoftJson();

