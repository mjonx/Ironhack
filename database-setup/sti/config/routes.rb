Rails.application.routes.draw do
  resources :animals

  resources :lions, controller: 'animals', type: 'Lion'
  resources :meerkats, controller: 'animals', type: 'Meerkat'
  resources :wild_boars, controller: 'animals', type: 'WildBoar'

  root 'animals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
