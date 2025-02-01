using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace EplSquadFinder.Application;

public static class DependencyInjection
{
    public static void AddApplicationServices(this IHostApplicationBuilder builder)
    {
        builder.Services.AddMediator(o =>
        {
            o.ServiceLifetime  = ServiceLifetime.Scoped;
        });
    }
}