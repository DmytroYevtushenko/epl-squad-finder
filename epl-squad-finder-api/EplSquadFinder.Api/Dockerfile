FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 8080
EXPOSE 8081

FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src

COPY ["EplSquadFinder.Api/EplSquadFinder.Api.csproj", "EplSquadFinder.Api/"]
COPY ["EplSquadFinder.Application/EplSquadFinder.Application.csproj", "EplSquadFinder.Application/"]
COPY ["EplSquadFinder.Infrastructure/EplSquadFinder.Infrastructure.csproj", "EplSquadFinder.Infrastructure/"]
RUN dotnet restore "EplSquadFinder.Api/EplSquadFinder.Api.csproj"

COPY . . 
WORKDIR "/src/EplSquadFinder.Api"

RUN dotnet build "EplSquadFinder.Api.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
RUN dotnet publish "EplSquadFinder.Api.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .

ENTRYPOINT ["dotnet", "EplSquadFinder.Api.dll"]
