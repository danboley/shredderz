import "../App.css";
import { useState, useEffect } from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import Navbar from "./Navbar";
import Home from "./Home";
import ShreddersPage from "./ShreddersPage";
import TripsPage from "./TripsPage";
import AwardsPage from "./AwardsPage";
import ShredderDetailPage from "./ShredderDetailPage";
import TripDetailPage from "./TripDetailPage";

function App() {
  const [count, setCount] = useState(0);
  const [shredders, setShredders] = useState([])
  const [trips, setTrips] = useState([])

  useEffect(() => {
    fetch("/hello")
      .then((res) => res.json())
      .then((data) => setCount(data.count));
  }, []);

  useEffect(() => {
    fetch("/shredders")
    .then((r) => r.json())
    .then((data) => setShredders(data));
  }, []);

  useEffect(() => {
    fetch("/trips")
    .then((r) => r.json())
    .then((data) => setTrips(data));
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
            <ShreddersPage shredders={shredders}/>
          </Route>
          <Route path="/shredder/:id">
            <ShredderDetailPage />
          </Route>
          <Route path="/trips">
            <TripsPage trips={trips}/>
          </Route>
          <Route path="/trip/:id">
            <TripDetailPage />
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
