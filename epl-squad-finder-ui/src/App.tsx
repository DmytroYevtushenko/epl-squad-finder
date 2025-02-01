import { Route, BrowserRouter as Router, Routes } from "react-router-dom";

import LeaguePage from "./pages/LeaguePage";
import Navbar from "./components/Navbar";
import SquadPage from './pages/SquadPage';

function App() {
  return (
    <Router>
      <Navbar />
      <div style={{ padding: "1rem", paddingTop: "70px", maxWidth: "900px", margin: "0 auto" }}>
        <Routes>
          <Route path="/" element={<LeaguePage />} />
          <Route path="/squad/:id" element={<SquadPage />} />
          <Route path="*" element={<LeaguePage />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
