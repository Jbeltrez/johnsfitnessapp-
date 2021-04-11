class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.integer :num_sets
    
      

      t.timestamps
    end
  end
end
