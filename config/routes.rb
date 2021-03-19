Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'pictures/index'
      post 'pictures/create'
      get 'pictures/show/:id', to: 'pictures#show'
      delete 'pictures/destroy/:id', to: 'pictures#destroy'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
end
