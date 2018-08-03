class CreateVehicleConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_configs do |t|
      t.string :title
      t.integer :year
      t.references :vehicle_make, foreign_key: true
      t.references :vehicle_model, foreign_key: true
      t.references :vehicle_trim, foreign_key: true
      t.references :vehicle_config_status, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
