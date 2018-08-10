class CreateVehicleModelOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_trim_options do |t|
      t.references :vehicle_trim, foreign_key: true
      t.references :vehicle_option, foreign_key: true
      t.references :vehicle_option_availability, foreign_key: true
      
      t.timestamps
    end
  end
end
