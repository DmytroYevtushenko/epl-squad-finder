import { Route, BrowserRouter as Router, Routes } from "react-router-dom";

import LeaguePage from "./pages/LeaguePage";
import Navbar from "./components/Navbar";
import SquadPage from "./pages/SquadPage";
import styled from "styled-components";

const Container = styled.div`
  padding: 1rem;
  padding-top: 70px;
  max-width: 900px;
  margin: 0 auto;
`;

function App() {
  return (
    <Router>
      <Navbar />
      <Container>
        <Routes>
          <Route path="/" element={<LeaguePage />} />
          <Route path="/squad/:id" element={<SquadPage />} />
          <Route path="*" element={<LeaguePage />} />
        </Routes>
      </Container>
    </Router>
  );
}

export default App;
