class CreateUsers < ActiveRecord::Migration[7.0]
    def change
      create_table :users do |t|
        t.string :name
        t.integer :age
        t.string :gender
        t.string :address
        t.integer :contact
        t.string :username
        t.string :password
  
        t.timestamps
      end
    end
  end