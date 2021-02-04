Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: "request_leaves#index"

  resources :addresses
  resources :request_leaves
  	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
