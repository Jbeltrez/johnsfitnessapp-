class Category < ApplicationRecord

    validates :name, presence: true

    # belongs_to :user 
    has_many :workouts 
    has_many :exercises, through: :workouts 
end
