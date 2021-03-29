# frozen_string_literal: true

require 'faraday'
# Read up about rails credentials as a way of storing env variables
class Api::V1::PicturesController < ApplicationController
  def index
    # Using Rails Credentials to store api key
    picture = Faraday.get "https://api.nasa.gov/planetary/apod?&api_key=#{Rails.application.credentials.NASA_API!}"

    # Rails stores secrets in config/credentials.yml.enc, which is encrypted and hence cannot be edited directly. Rails uses config/master.key or alternatively looks for the environment variable ENV["RAILS_MASTER_KEY"] to encrypt the credentials file. Because the credentials file is encrypted, it can be stored in version control, as long as the master key is kept safe.

    #By default, the credentials file contains the application's secret_key_base. It can also be used to store other secrets such as access keys for external APIs.

    #To edit the credentials file, run bin/rails credentials:edit. This command will create the credentials file if it does not exist. Additionally, this command will create config/master.key if no master key is defined.

    # Using dotenv-rails gem to store api key as environment variable
    # install dotenv-rails gem
    # create a .env file and add key/value there
    # make sure to gitignore .env
    
    # picture = Faraday.get "https://api.nasa.gov/planetary/apod?&api_key=#{ENV['NASA_API']}"

    render json: picture
  end
end
