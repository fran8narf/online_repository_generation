class CreateLaptops < ActiveRecord::Migration
  def change
    create_table :laptops do |t|
      t.string :brand
      t.string :model
      t.string :proccessor_brand
      t.integer :ram
      t.string :price

      t.timestamps null: false
    end
  end
end
