class CreateVehicleTrims < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_trims do |t|
      t.references :vehicle_make, foreign_key: true
      t.references :vehicle_model, foreign_key: true
      t.string :make_id
      t.string :make_display
      t.string :name
      t.string :trim
      t.string :year
      t.string :body
      t.string :engine_position
      t.integer :engine_cc
      t.integer :engine_cyl
      t.string :engine_type
      t.integer :engine_valves_per_cyl
      t.string :engine_power_ps
      t.integer :engine_power_rpm
      t.string :engine_torque_nm
      t.integer :engine_torque_rpm
      t.float :engine_bore_mm
      t.float :engine_stroke_mm
      t.string :engine_compression
      t.string :engine_fuel
      t.integer :top_speed_kph
      t.integer :zero_to_100_kph
      t.string :drive
      t.string :drive2
      t.integer :seats
      t.integer :seats2
      t.integer :weight_kg
      t.float :length_mm
      t.float :width_mm
      t.float :height_mm
      t.float :wheelbase_mm
      t.float :lkm_hwy
      t.float :lkm_mixed
      t.float :lkm_city
      t.integer :fuel_cap_l
      t.boolean :sold_in_us
      t.string :co2

      t.timestamps
    end
  end
end