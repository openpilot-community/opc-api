class CreateVehicleTrimSpecs < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_trim_style_specs do |t|
      t.references :vehicle_trim_style, foreign_key: true
      t.string :name
      t.string :value
      t.string :inclusion, default: "standard"

      t.timestamps
    end
  end
end
