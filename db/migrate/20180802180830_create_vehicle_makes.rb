class CreateVehicleMakes < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_makes do |t|
      t.string :name

      t.timestamps
    end
  end
end
