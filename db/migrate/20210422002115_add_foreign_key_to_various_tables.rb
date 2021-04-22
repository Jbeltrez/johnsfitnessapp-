class AddForeignKeyToVariousTables < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :user_id, :integer 
    add_column :workouts, :category_id, :integer 
    add_column :exercises, :workout_id, :integer 
  end
end
