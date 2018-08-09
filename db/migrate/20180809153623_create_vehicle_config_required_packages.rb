class CreateVehicleConfigRequiredPackages < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_required_packages do |t|
      t.references :vehicle_config, foreign_key: true, index: {:name => "vehicle_config_package"}
      t.references :vehicle_make_package, foreign_key: true, index: {:name => "vehicle_config_package_link"}

      t.timestamps
    end
  end
end
