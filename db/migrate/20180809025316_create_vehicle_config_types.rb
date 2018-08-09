class CreateVehicleConfigTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_types do |t|
      t.string :name
      t.text :description
      t.integer :difficulty_level

      t.timestamps
    end
  end
end
