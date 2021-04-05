class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :quantity 
      t.integer :difficulty_level

      t.timestamps
    end
  end
end
