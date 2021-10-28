class ChangePropertiesTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :properties, :gallery
    add_column :properties, :images, :text, :array => true, :default => [] 
  end
end
