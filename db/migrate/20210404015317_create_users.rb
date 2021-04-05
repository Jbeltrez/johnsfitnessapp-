class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_hash 
      t.integer :age  
      t.integer :weight  

      t.timestamps
    end
  end
end
