class AddRefreshingToVehicleConfigs < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_configs, :refreshing, :boolean, default: false
  end
end
