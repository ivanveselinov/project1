class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :password
      t.text :name
      t.text :surname
      t.text :mobile
      t.text :phone
      t.text :image
      t.timestamps
    end
  end
end
