Rails.application.routes.draw do
  resources :sandwich_ingredients
  resources :ingredients
  resources :sandwiches
  get '/sandwiches/detailed/:id', to: 'sandwiches#detailed'
  get 'sandwiches/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
