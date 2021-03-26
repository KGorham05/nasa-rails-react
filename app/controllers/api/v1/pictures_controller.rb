require 'faraday'
# Read up about rails credentials as a way of storing env variables
class Api::V1::PicturesController < ApplicationController
  def index
    # Using dotenv-rails gem to store api key as environment variable
    # picture = Faraday.get "https://api.nasa.gov/planetary/apod?&api_key=#{ENV['NASA_API']}"

    # Using Rails Credentials to store api key
    picture = Faraday.get "https://api.nasa.gov/planetary/apod?&api_key=#{Rails.application.credentials.NASA_API!}"

    # picture = Picture.all.order(created_at: :desc)
    render json: picture
  end

  def create
    picture = Picture.create!(picture_params)
    if picture
      render json: picture
    else
      render json: picture.errors
    end
  end

  def show
    if picture
      render json: picture
    else
      render json: picture.errors
    end
  end

  def destroy
    picture&.destroyrender json: { message: "Picture Deleted" }
  end

  private

  def picture_params
    params.permit(:copyright, :date, :explanation, :hdurl, :title)
  end

  def picture
    @picture ||= Picture.find(params[:id])
  end

end
