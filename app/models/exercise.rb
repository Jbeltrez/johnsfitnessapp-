class Exercise < ApplicationRecord

    # i want to be able to have nested_attributes_for_exercises 
    # on my workout form 
    # fields for an exercise are name, 
    # sets, reps, difficulty level 
    # is there a way to have my db have multiple 
    # instances of the same workout but different 
    # set rep schemes for that exercise? 
    # would that be a new model ? 

    belongs_to :workout 
    # belongs_to :user  

    validates :name, presence: true
    # validates :name, uniqueness: true
    # validates :difficulty_level, presence: true 
    # validates :quantity, presence: true 

     # workout has a name (cardio, warmup etc)
     # adding an exercise means selecting workout name to add 
     # it to 
end
