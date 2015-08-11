Rails.application.routes.draw do

  

 root "site#index"

 #User routes
 get "/signup", to: "users#new"
 get "/profile", to: "users#show"

 resources :users, only: [:create, :edit, :update]

 # Sesions routes
 get "/login", to: "sessions#new"
 get "/logout", to: "sessions#destroy"
 resources :sessions, only: [:create]
 



 
end
