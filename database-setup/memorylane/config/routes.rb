Rails.application.routes.draw do

  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  get 'users/new', to: 'users#new'
  post 'users/create', to: 'users#create'
  get 'users/edit', to: 'users#edit'
  patch 'users/update', to: 'users#update'

  get 'memories', to: 'memories#index'
  get 'memories/show', to: 'memories#show'
  get 'memories/new', to: 'memories#new'
  post 'memories/create', to: 'memories#create'
  get 'memories/edit', to: 'memories#edit'
  patch 'memories/update', to: 'memories#update'

  get 'trips', to: 'trips#index'
  get 'trips/show', to: 'trips#show'
  get 'trips/new', to: 'trips#new'
  post 'trips/create', to: 'trips#create'
  get 'trips/edit', to: 'trips#edit'
  patch 'trips/update', to: 'trips#update'

  get 'concerts', to: 'concerts#index'
  get 'concerts/show', to: 'concerts#show'
  get 'concerts/new', to: 'concerts#new'
  post 'concerts/create', to: 'concerts#create'
  get 'concerts/edit', to: 'concerts#edit'
  patch 'concerts/update', to: 'concerts#update'

  get 'achievements', to: 'achievements#index'
  get 'achievements/show', to: 'achievements#show'
  get 'achievements/new', to: 'achievements#new'
  post 'achievements/create', to: 'achievements#create'
  get 'achievements/edit', to: 'achievements#edit'
  patch 'achievements/update', to: 'achievements#update'

  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
