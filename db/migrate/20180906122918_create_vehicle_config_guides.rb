class CreateVehicleConfigGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_guides do |t|
      t.references :vehicle_config, foreign_key: true
      t.references :guide, foreign_key: true
      t.references :vehicle_config_type, foreign_key: true
      t.timestamps
    end
  end
end
