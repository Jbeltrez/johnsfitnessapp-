class AddQuantityTypeToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :quantity_type, :string 
  end
end
