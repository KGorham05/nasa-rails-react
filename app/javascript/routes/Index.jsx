import React from "react";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import Home from "../components/Home";
import Pictures from "../components/Pictures";

export default (
  <Router>
    <Switch>
      <Route path="/" exact component={Home} />
      <Route path="/pictures" exact component={Pictures} />
    </Switch>
  </Router>
);