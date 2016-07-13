Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'products#index'

  get '/users', to: 'users#index'
  get 'users/new', to: 'users#new'
  post '/users', to: 'users#create'

  get '/products', to: 'products#index'
  get 'products/new', to: 'products#new'
  post '/products', to: 'products#create'
end
