class AddAvailabilityToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :availablitly, :boolean
  end
end
