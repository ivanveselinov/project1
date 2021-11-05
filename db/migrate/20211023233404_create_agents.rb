class CreateAgents < ActiveRecord::Migration[5.2]
  def change
    create_table :agents do |t|
      t.text :name
      t.text :surname
      t.text :mobile
      t.text :phone
      t.text :email
      t.text :image

      t.timestamps
    end
  end
end
