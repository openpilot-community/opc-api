class AddIndexTitleToVehicleConfigs < ActiveRecord::Migration[5.2]
  def change
    add_index :vehicle_configs, [ :year, :year_end, :vehicle_make_id, :vehicle_model_id, :vehicle_config_type_id ], :unique => true, name: "ix_uniq_vehicle"
  end
end
