using Agricola_Api;
using Agricola_Api.DataBase;
using Agricola_Api.Repository;
using Agricola_Api.Repository.IRepository;
using Microsoft.EntityFrameworkCore;

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

builder.Services.AddAutoMapper(typeof(MapingConfig));

builder.Services.AddScoped<IUnidadMedidaRepository, UnidadMedidaRepository>();
builder.Services.AddScoped<IEmpresaRepository, EmpresaRepository>();

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

