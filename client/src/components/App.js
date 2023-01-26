import "../App.css";
import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import Navbar from "./Navbar";
import Home from "./Home";
import ShreddersPage from "./ShreddersPage";
import TripsPage from "./TripsPage";
import AwardsPage from "./AwardsPage";

function App() {
  const [count, setCount] = useState(0);

  useEffect(() => {
    fetch("/hello")
      .then((r) => r.json())
      .then((data) => setCount(data.count));
  }, []);

  useEffect(() => {
    fetch("/shredders")
    .then((r) => r.json())
    .then((data) => console.log(data));
  }, []);

  return (
    <BrowserRouter>
      <div className="App">
        <Navbar />
        <h1>Page Count: {count}</h1>
        <Switch>
          <Route path="/home">
            <Home />
          </Route>
          <Route path="/testing">
            <h1>Test Route</h1>
          </Route>
          <Route path="/shredderz">
            <ShreddersPage />
          </Route>
          <Route path="/trips">
            <TripsPage />
          </Route>
          <Route path="/awards">
            <AwardsPage />
          </Route>
          <Route path="/">
            <Home />
          </Route>
        </Switch>
      </div>
    </BrowserRouter>
  );
}

export default App;
