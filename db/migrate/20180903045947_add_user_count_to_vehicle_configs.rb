class AddUserCountToVehicleConfigs < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_configs, :user_count, :integer, default: 0
    add_column :vehicle_trims, :user_count, :integer, default: 0
    add_column :vehicle_trim_styles, :user_count, :integer, default: 0
  end
end
