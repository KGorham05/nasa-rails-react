import React from "react";
import { Link } from "react-router-dom";

class Pictures extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      picture: "",
    };
  }

  // Move this api call to a util folder that I import and use
  render() {
    const handleClick = () => {
      console.log("Clicked me!");
      const url = "/api/v1/pictures/index";
      fetch(url)
        .then((response) => {
          if (response.ok) {
            return response.json();
          }
          throw new Error("Network response was not ok.");
        })
        .then((response) =>
          this.setState({ picture: JSON.parse(response.body) }, () => {
            console.log(this.state.picture);
          })
        )
        .catch(() => this.props.history.push("/"));
    };

    return (
      <>
        <section className="jumbotron jumbotron-fluid text-center">
          <div className="container py-5">
            <h1 className="display-4">APOD</h1>
            <p className="lead text-muted">
              One of the most popular websites at NASA is the Astronomy Picture
              of the Day. In fact, this website is one of the most popular
              websites across all federal agencies. It has the popular appeal of
              a Justin Bieber video.
            </p>
          </div>
        </section>
        {this.state.picture && (
          <>
            <div className="container">
              <div className="row">
                <div className="col-12">
                  <h1 className="pl-5">
                    {this.state.picture.title} by {this.state.picture.copyright}
                  </h1>
                </div>
              </div>
              <div className="row">
                <div className="col-12">
                  <p>{this.state.picture.explanation}</p>
                </div>
              </div>
            </div>
            <div className="container-fluid px-0">
              <div className="row">
                <div className="col-12">
                  <img src={this.state.picture.hdurl} className="img-fluid" />
                </div>
              </div>
            </div>
          </>
        )}
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
  }
}
export default Pictures;
