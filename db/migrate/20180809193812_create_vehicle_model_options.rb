class CreateVehicleModelOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_model_options do |t|
      t.integer :vehicle_year
      t.references :vehicle_make, foreign_key: true
      t.references :vehicle_model, foreign_key: true
      t.references :vehicle_option, foreign_key: true
      t.references :vehicle_option_availability, foreign_key: true

      t.timestamps
    end
  end
end
