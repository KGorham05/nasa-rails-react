Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'pictures', to: 'pictures#index'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
end
