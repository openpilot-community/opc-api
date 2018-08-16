class CreateVehicleModelTrims < ActiveRecord::Migration[5.2]
  def change
    rename_table :vehicle_trims, :vehicle_specs
    create_table :vehicle_trims do |t|
      t.string :name
      t.references :vehicle_model, foreign_key: true

      t.timestamps
    end
  end
end
