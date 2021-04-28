class ChangeColumnTypeInExercises < ActiveRecord::Migration[6.0]
  def change
    change_column :exercises, :difficulty_level, :string 
  end
end
