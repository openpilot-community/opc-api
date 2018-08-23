class CreateVehicleTrimStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_trim_styles do |t|
      t.references :vehicle_trim, foreign_key: true
      t.string :name
      t.string :inventory_prices
      t.string :mpg
      t.string :engine
      t.string :trans
      t.string :drive
      t.string :colors
      t.string :seats

      t.timestamps
    end
  end
end
