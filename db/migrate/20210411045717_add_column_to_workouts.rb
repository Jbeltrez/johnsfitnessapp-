class AddColumnToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :date_of_workout, :datetime 

  end
end
