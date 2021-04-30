class User < ApplicationRecord
    
    has_many :workouts
    has_many :exercises, through: :workouts 
     

    validates :name, :username, presence: true  
    validates :username, uniqueness: true 

    has_secure_password 
end
