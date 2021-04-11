class AddGroupToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :group, :string
  end
end
