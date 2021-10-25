class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.text :adress
      t.text :suburb
      t.integer :postcode
      t.integer :rooms
      t.integer :livingrooms
      t.integer :bathrooms
      t.integer :toilets
      t.integer :garage
      t.integer :pspace
      t.integer :rent
      t.text :photos
  
      t.timestamps
    end
  end
end
