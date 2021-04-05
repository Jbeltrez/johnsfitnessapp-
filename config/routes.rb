Rails.application.routes.draw do
  resources :users, only: [:show, :edit, :update, :create]

  resources :workouts
  #only an index for a users workouts 
  #nested resource you want a workout 
  resources :exercises

  get "/signup", to: "users#new"
  get 'login', to: "sessions#new"
  post '/login', to: "sessions#create"

  get '/logout', to: "sessions#destroy"
  # default route 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
