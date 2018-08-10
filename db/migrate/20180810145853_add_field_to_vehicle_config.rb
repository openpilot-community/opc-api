class AddFieldToVehicleConfig < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_configs, :parent_id, :integer
  end
end
