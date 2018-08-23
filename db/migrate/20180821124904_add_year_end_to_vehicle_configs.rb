class AddYearEndToVehicleConfigs < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_configs, :year_end, :integer
  end
end
