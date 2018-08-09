class AddsVehicleConfigTypeToTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicle_config_capabilities, :vehicle_config_type
  end
end
