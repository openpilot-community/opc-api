class AddSourceImageUrlToVehicleConfig < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_configs, :source_image_url, :string
    add_column :hardware_items, :source_image_url, :string
    add_column :vehicle_capabilities, :source_image_url, :string
    add_column :vehicle_makes, :source_image_url, :string
    add_column :modifications, :source_image_url, :string
    add_column :guides, :source_image_url, :string
  end
end
