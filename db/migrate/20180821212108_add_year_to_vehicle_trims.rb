class AddYearToVehicleTrims < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_trims, :year, :integer
  end
end
