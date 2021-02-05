Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root to: "request_leaves#index"

  resources :addresses 

  resources :request_leaves
  get "total_request" , to: "request_leaves#total_request" 
  	
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
