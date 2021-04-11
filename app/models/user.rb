class User < ApplicationRecord
    
    has_many :exercises
    has_many :workouts, through: :exercises 
     

    validates :name, presence: true 
    validates :username, presence: true 
    validates :username, uniqueness: true 

    has_secure_password 
end
