class CreateVehicleConfigCapabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_capabilities do |t|
      t.references :vehicle_config, foreign_key: true
      t.references :vehicle_capability, foreign_key: true
      t.integer :kph
      t.integer :timeout
      t.boolean :confirmed
      t.integer :confirmed_by
      t.text :notes

      t.timestamps
    end
  end
end
