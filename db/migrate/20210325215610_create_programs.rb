class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :difficulty_level
      t.string :duration

      t.timestamps
    end
  end
end
