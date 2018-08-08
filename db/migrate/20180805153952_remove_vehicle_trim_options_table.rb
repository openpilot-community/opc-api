class RemoveVehicleTrimOptionsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :vehicle_trim_options
  end
end
