class CreateVehicleConfigFingerprints < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_fingerprints do |t|
      t.references :vehicle_config, foreign_key: true
      t.string :label
      t.string :fingerprint

      t.timestamps
    end
  end
end
