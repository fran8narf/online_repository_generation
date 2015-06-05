class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :favourite_food
      t.string :fav_prog_language
      t.string :pic
      
      t.timestamps null: false
    end
  end
end
