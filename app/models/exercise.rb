class Exercise < ApplicationRecord
    has_many :workouts 
    has_many :users, through: :workouts 
     # workout has a name (cardio, warmup etc)
     # adding an exercise means selecting workout name to add 
     # it to 
end
