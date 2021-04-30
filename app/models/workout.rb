class Workout < ApplicationRecord
    belongs_to :user 
    belongs_to :category 
    has_many :exercises 
    # has_many :users, through: :exercises
    accepts_nested_attributes_for :exercises 
    validates :name, presence: true 

    scope :by_category, -> (category){where(category: category)}
    scope :by_date_ascend, -> {order(date_of_workout: :asc)}
    
    
end
