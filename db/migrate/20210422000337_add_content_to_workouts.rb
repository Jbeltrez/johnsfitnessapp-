class AddContentToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :content, :text
  end
end
