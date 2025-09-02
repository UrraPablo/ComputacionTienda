//import logo from './logo.svg';
import './App.css';
import Home from './Pages/Home'
import Encuesta from "./Pages/Encuesta/Encuesta";
import Filtro from "./filtro";

function App() {
  return (
    <div className="App">
      <Home/>
      <Encuesta />
      <Filtro />
    </div>
  );
}

export default App;
