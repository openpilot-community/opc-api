class CreateVehicleCapabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_capabilities do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
