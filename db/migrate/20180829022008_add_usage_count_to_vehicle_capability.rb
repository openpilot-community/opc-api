class AddUsageCountToVehicleCapability < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_capabilities, :vehicle_config_count, :integer, default: 0
    add_column :vehicle_capabilities, :grouping, :string
    add_column :vehicle_capabilities, :value_type, :string
    add_column :vehicle_capabilities, :default_string, :string
    add_column :vehicle_capabilities, :default_timeout, :string
    add_column :vehicle_capabilities, :default_kph, :string

    add_column :vehicle_config_capabilities, :string_value, :string
  end
end
