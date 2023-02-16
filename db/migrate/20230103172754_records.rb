class Records < ActiveRecord::Migration[7.0]
  def change

    create_table :records do |t|
      
      t.string :name
      t.string :fathername
      t.string :mothername
      t.string :email 
      t.string :address 
      t.string :city 
      t.string :state 
      t.integer :phoneno
      t.integer :tenth
      t.integer :twelve
      t.integer :firstsem
      t.integer :secondsem
      t.timestamps
    
    end
  end
end
