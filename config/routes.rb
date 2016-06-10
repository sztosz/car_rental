Rails.application.routes.draw do

  resources :car_rents
  resources :cars
  resources :car_models
  resources :car_manufacturers
  resources :car_producers
  resources :customers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
