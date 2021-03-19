import React from "react";
import { Link } from "react-router-dom";

export default () => (
  <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container secondary-color">
        <h1 className="display-4">Space Pictures!</h1>
        <p className="lead">
          Nasa open APIs - Astronomy Picture of the Day (APOD)
        </p>
        <hr className="my-4" />
        <Link
          to="/pictures"
          className="btn btn-lg custom-button"
          role="button"
        >
          View Pictures
        </Link>
      </div>
    </div>
  </div>
);