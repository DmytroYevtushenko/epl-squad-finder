# ⚽ EPL Squad Finder

![Build Status](https://github.com/DmytroYevtushenko/epl-squad-finder/actions/workflows/pipeline.yml/badge.svg)

🚀 **EPL Squad Finder** is a web-based proof of concept (POC) application that allows users to select any team from the **2024/25 English Premier League season** and view detailed squad information.

The app **pre-fetches squad data** from two external APIs:
- 🌍 [API-Football](https://dashboard.api-football.com)
- ⚽ [Football-Data.org](https://www.football-data.org)

🔍 **Why two APIs?**  
Due to API rate limits, we use a **custom matching algorithm** to **combine** their data, allowing us to provide **comprehensive team & player details**:

✔️ **Team Details**  
- Team logo  
- Official team website  

✔️ **Player Details**  
- Profile picture  
- Full name  
- Date of birth  
- Position  

📦 **All matched data is stored in a database for fast retrieval and displayed via a user-friendly web interface.**

## 📄 Documentation

For detailed documentation, please visit our Notion page: [EPL Squad Finder Documentation](https://versed-fountain-300.notion.site/EPL-Squad-Finder-18e9a784b6c980119ecce3e7232ad461?pvs=74).

A PDF version of the documentation is also available in the `docs` folder.

---

## 🏗️ **Technology Stack**
| Tech | Details |
|------|---------|
| **Backend** | .NET 9, Entity Framework, Mediator, Refit, Polly, FuzzySharp |
| **Testing** | NUnit, AutoFixture, Moq, Shouldly |
| **Frontend** | React (Vite), Styled Components |
| **Database** | Microsoft SQL Server |
| **DevOps** | Docker, Docker Compose, GitHub Actions, Azure Container Apps |

---

## 🛠 **How to Run Locally**

### 🔹 1. Prerequisites
Make sure you have installed:
- 🐳 [Docker](https://www.docker.com/get-started) (Recommended) 
- 🏗️ [.NET 9 SDK](https://dotnet.microsoft.com/download/dotnet)  
- 📦 [Node.js 18+](https://nodejs.org/en/)  

---

### 🔹 2. Clone the Repository
```sh
git clone https://github.com/DmytroYevtushenko/epl-squad-finder.git
cd epl-squad-finder
```

### 🔹 3. Run with Docker (Recommended)
```sh
docker compose up --build
```
🚀 This will automatically start:
- SQL Server (database)
- Console App (applies EF migrations and fetches API data)
- API (running on [http://localhost:5290](http://localhost:5290))
- UI (running on [http://localhost:3000](http://localhost:3000))

> **Note:** The console app requires API keys to be set in `compose.yaml`. Alternatively, if you prefer not to register and insert API keys, you can manually seed the database using the following command:

```sh
docker-compose --profile manual run db-seed
```

This command will execute the `seed.sql` script in the Docker container, populating the database with predefined data.

### 🔹 3.1 Run Without Docker
1. **Database Setup**
   - Install SQL Server
   - Update connection strings in:
     - `epl-squad-finder-api/EplSquadFinder.DataGeneration/appsettings.json`
     - `epl-squad-finder-api/EplSquadFinder.Api/appsettings.json`

2. **Backend Setup**
```sh
# Run API
cd epl-squad-finder-api/EplSquadFinder.Api
dotnet build
dotnet run

# Generate Data (in a new terminal)
cd epl-squad-finder-api/EplSquadFinder.DataGeneration
# Update API keys in appsettings.json first!
dotnet build
dotnet run
```

3. **Frontend Setup**
```sh
cd epl-squad-finder-ui
npm install
npm run dev
```

### 🔹 4. Open the UI
Once everything is running, open a browser and go to:
🔗 [http://localhost:3000](http://localhost:3000)

---

## 📡 How It Works
- Retrieves league and team data from two APIs:
  - Football-Data API
  - API-Football
- Matches teams based on multiple criteria
- Saves matched data into Microsoft SQL Server
- Provides a user-friendly UI for browsing leagues, teams, and players

---

## 🚀 CI/CD: Automated Build & Deployment
✅ GitHub Actions is used for:
- Building and testing on every push and pull request to `main`
- Building and pushing Docker images to Azure Container Registry
- Deploying the UI to Azure Container Apps 🌐 (currently configured to use local API for testing purposes)

---

## ⚙️ API Endpoints

| Method | Endpoint                                | Description                      |
|--------|-----------------------------------------|----------------------------------|
| GET    | /api/leagues/{id}                       | Get league details               |
| GET    | /api/teams/{id}                         | Get team details                 |
| POST   | /api/teamnicknames/team/{teamId}           | Add a nickname to a team         |
| DELETE | /api/teamnicknames/{nicknameId}       | Remove a nickname                |

For API endpoints testing check [EplSquadFinder.http](https://github.com/DmytroYevtushenko/epl-squad-finder/blob/main/epl-squad-finder-api/EplSquadFinder.Api/EplSquadFinder.http)

## 📊 Database Diagrams

To view and edit the database diagrams, you can use PlantUML. The `.pu` files located in the `docs/diagrams/` folder can be opened with:

- **The PlantUML Online Editor**: [www.plantuml.com/plantuml/uml](http://www.plantuml.com/plantuml/uml)
- **A local installation of PlantUML** with a compatible IDE, such as:
  - **IntelliJ IDEA**: Use the PlantUML integration plugin.
  - **Visual Studio Code**: Use the PlantUML extension.
- **The VSC extension**: [PlantUML for VS Code](https://marketplace.visualstudio.com/items?itemName=jebbs.plantuml).

### How to Use

1. **Online Editor**: Copy the contents of the `.pu` files into the PlantUML online editor to generate the database diagrams visually.
2. **Local Installation**: Open the `.pu` files in your IDE with the PlantUML plugin to view and edit the diagrams.

This setup allows you to easily visualize and modify the database structure as needed.
