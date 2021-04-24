class AddSetsToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :sets, :string 
  end
end
