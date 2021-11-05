class CreateAgentsPropertys < ActiveRecord::Migration[5.2]
  def change
    create_table :agents_propertys, :id => false do |t|
      t.integer :agent_id
      t.integer :property_id
    end
  end
end
