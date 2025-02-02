FROM mcr.microsoft.com/dotnet/runtime:9.0 AS base
USER $APP_UID
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["EplSquadFinder.DataGeneration/EplSquadFinder.DataGeneration.csproj", "EplSquadFinder.DataGeneration/"]
COPY ["EplSquadFinder.Application/EplSquadFinder.Application.csproj", "EplSquadFinder.Application/"]
COPY ["EplSquadFinder.Infrastructure/EplSquadFinder.Infrastructure.csproj", "EplSquadFinder.Infrastructure/"]
RUN dotnet restore "EplSquadFinder.DataGeneration/EplSquadFinder.DataGeneration.csproj"

COPY . .
WORKDIR "/src/EplSquadFinder.DataGeneration"
RUN dotnet build "EplSquadFinder.DataGeneration.csproj" -c $BUILD_CONFIGURATION -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "EplSquadFinder.DataGeneration.csproj" -c $BUILD_CONFIGURATION -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "EplSquadFinder.DataGeneration.dll"]
