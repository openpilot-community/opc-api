class AddLookupsToVehicleCapabilities < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_capabilities, :spec_lookups, :string
  end
end
