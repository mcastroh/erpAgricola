using Agricola_Models.Models;
using DocumentFormat.OpenXml.Office2016.Drawing.ChartDrawing;
using webAppAgricola;
using webAppAgricola.Services;
using webAppAgricola.Services.IServices;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

builder.Services.AddScoped<IUnidadMedidaService_API, UnidadMedidaService_API>();
//builder.Services.AddScoped<IEntityService_API, EntityService_API<T> >();

builder.Services.AddScoped(typeof(IEntityService_API<>), typeof(EntityService_API<>));

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");


IWebHostEnvironment env = app.Environment;
Rotativa.AspNetCore.RotativaConfiguration.Setup(env.WebRootPath, "../Rotativa/Windows");


app.Run();



// -------------------------------------------------------------------
// revisar este enlace....
// -------------------------------------------------------------------
// 1. Consumir WEB API desde ASP.NET CORE
//      https://www.youtube.com/watch?v=YQiqRiYtyVc
// -------------------------------------------------------------------
// 2. Web APIs (NET 7) La Guia Completa (Crear y Consumir API)
//      https://www.youtube.com/watch?v=OuiExAqVapk
// -------------------------------------------------------------------
// 3. Bootstrap’s cards
//      https://getbootstrap.com/docs/5.0/components/card/
// -------------------------------------------------------------------
