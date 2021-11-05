class AddGalleryToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :gallery, :text
  end
end
