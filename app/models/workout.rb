class Workout < ApplicationRecord
    belongs_to :user 
    belongs_to :category 
    has_many :exercises 
    # has_many :users, through: :exercises
    accepts_nested_attributes_for :exercises 
    validates :name, presence: true 

    # def category_name=(name)
    #     self.category = Category.find_or_create_by(name: name)

    # end

    # def category_name
    #     self.category ? self.category.name : nil 
    # end
end
