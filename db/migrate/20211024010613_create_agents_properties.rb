class CreateAgentsProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :agents_properties, :id => false do |t|
      t.integer :agent_id
      t.integer :property_id
    end
    drop_table :agents_propertys
  end
end
