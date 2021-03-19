import React from "react";
import { Link } from "react-router-dom";

class Pictures extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      picture: {},
    };
  }

  // Move this api call to a util folder that I import and use
  render() {
    const handleClick = () => {
      console.log("Clicked me!")
      const url = "/api/v1/pictures/index"
      fetch(url)
      .then(response => {
        if (response.ok) {
          return response.json();
        }
        throw new Error("Network response was not ok.");
      })
      .then(response => this.setState({picture: response }))
      .catch(() => this.props.history.push("/"));
    }


    return (
      <>
        <section className="jumbotron jumbotron-fluid text-center">
          <div className="container py-5">
            <h1 className="display-4">APOD</h1>
            <p className="lead text-muted">
            One of the most popular websites at NASA is the Astronomy Picture of the Day. In fact, this website is one of the most popular websites across all federal agencies. It has the popular appeal of a Justin Bieber video.
            </p>
          </div>
        </section>
        <div className="py-5">
          <main className="container">
            <div className="text-right mb-3">
              <button onClick={handleClick} className="btn custom-button">
                View Today's Picture
              </button>
            </div>
            <Link to="/" className="btn btn-link">
              Home
            </Link>
          </main>
        </div>
      </>
    );
  };
};
export default Pictures;
