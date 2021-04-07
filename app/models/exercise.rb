class Exercise < ApplicationRecord
    has_many :workouts 
    has_many :users, through: :workouts 

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :difficulty_level, presence: true 
    validates :quantity, presence: true 

     # workout has a name (cardio, warmup etc)
     # adding an exercise means selecting workout name to add 
     # it to 
end
