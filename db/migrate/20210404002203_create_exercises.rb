class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :quantity 
      t.integer :difficulty_level

      # t.references :user, foreign_key: true 
      # t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
