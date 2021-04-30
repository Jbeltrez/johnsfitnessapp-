Rails.application.routes.draw do
  root to: "static#home"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get "/signup", to: "users#new"
  post '/signup' => 'users#create'
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get 'auth/facebook/callback', to: 'sessions#createe'
  get '/logout', to: "sessions#destroy"
  resources :users, only: [:show, :new, :edit, :update, :create]

  resources :workouts do 
    resources :exercises
  end

  resources :categories do 

    resources :workouts 
  end
  #only an index for a users workouts 
  #nested resource you want a workout 
  resources :exercises
  
  # default route 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
