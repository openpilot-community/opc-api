class CreateVehicleMakePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_make_packages do |t|
      t.string :name
      t.references :vehicle_make, foreign_key: true
      t.timestamps
    end
  end
end
