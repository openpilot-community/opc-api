class CreateVehicleConfigModifications < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_modifications do |t|
      t.references :vehicle_config, foreign_key: true
      t.references :modification, foreign_key: true

      t.timestamps
    end
  end
end
