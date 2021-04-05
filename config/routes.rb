Rails.application.routes.draw do
  resources :users, only: [:new, :show, :edit]

  resources :workouts
  #only an index for a users workouts 
  #nested resource you want a workout 
  resources :exercises
  # default route 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
