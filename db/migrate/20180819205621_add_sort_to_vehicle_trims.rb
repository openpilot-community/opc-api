class AddSortToVehicleTrims < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_trims, :sort_order, :integer, default: 0
  end
end
