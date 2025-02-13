import PontosTuristicos from "./componentes/PontosTuristicos";
import Home from "./componentes/Home";
import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import { Nav, Navbar, Container } from "react-bootstrap";
import 'bootstrap/dist/css/bootstrap.min.css'

function App() {
  return (

    <div>

      <BrowserRouter>

            <Navbar bg="primary" data-bs-theme="dark">
              <Container>
                <Navbar.Brand>Sinqia Turismo</Navbar.Brand>
                <Nav className="me-auto">
                  <Nav.Link href="/">Home</Nav.Link>
                  <Nav.Link href="/pontosturisticos">Pontos Turisticos</Nav.Link>
                </Nav>
              </Container>
            </Navbar>

        <Routes>

          <Route path="/" index element={<Home/>}></Route>
          <Route path="/pontosturisticos" element={<PontosTuristicos/>}></Route>

        </Routes>

      
      </BrowserRouter>

    </div>
  );
}

export default App;
