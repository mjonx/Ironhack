Rails.application.routes.draw do
  resources :sandwich_ingredients
  resources :sandwiches
  resources :sandwich_ingredients

  resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
  scope "/api" do
    resources :sandwiches
    resources :ingredients
    post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
  end

  get "/sandwich_views/index", to: 'sandwich_views#index'

  get '/sandwiches/detailed/:id', to: 'sandwiches#detailed'
  get '/sandwiches/new', to: 'sandwiches#new'
  post '/sandwiches/:id_s/ingredients/add/:id_i', to: 'sandwiches#add_ingredient'
  post '/sandwiches/:id_s/ingredients/delete/:id_i', to: 'sandwiches#delete_ingredient'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
