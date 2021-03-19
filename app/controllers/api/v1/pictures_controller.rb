require 'dotenv-rails'
require 'faraday'

class Api::V1::PicturesController < ApplicationController
  def index
    p "https://api.nasa.gov/planetary/apod?&api_key=#{ENV['NASA_API']}"
    picture = Faraday.get "https://api.nasa.gov/planetary/apod?&api_key=#{ENV['NASA_API']}"

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
