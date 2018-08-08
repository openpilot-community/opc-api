class DropVehicleOptionStatuses < ActiveRecord::Migration[5.2]
  def change
    drop_table :vehicle_option_statuses
  end
end
