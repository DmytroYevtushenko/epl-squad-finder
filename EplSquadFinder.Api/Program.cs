using EplSquadFinder.Application;
using EplSquadFinder.Infrastructure;

var builder = WebApplication.CreateBuilder(args);

builder.AddInfrastructureServices();
builder.AddApplicationServices();

builder.Services.AddControllers();
builder.Services.AddOpenApi();

builder.Services.AddCors();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment()) app.MapOpenApi();

app.UseCors(x => x.AllowAnyOrigin()
    .AllowAnyHeader()
    .AllowAnyMethod()
);

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();