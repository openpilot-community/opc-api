class AddTypeToVehicleConfig < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicle_configs, :vehicle_config_type, :foreign_key => true
  end
end
