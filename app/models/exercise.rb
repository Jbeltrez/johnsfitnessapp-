class Exercise < ApplicationRecord

    belongs_to :workout 
    belongs_to :user  

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :difficulty_level, presence: true 
    validates :quantity, presence: true 

     # workout has a name (cardio, warmup etc)
     # adding an exercise means selecting workout name to add 
     # it to 
end
