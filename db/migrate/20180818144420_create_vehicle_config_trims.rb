class CreateVehicleConfigTrims < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_trims do |t|
      t.references :vehicle_config, foreign_key: true
      t.references :vehicle_trim, foreign_key: true

      t.timestamps
    end
  end
end
