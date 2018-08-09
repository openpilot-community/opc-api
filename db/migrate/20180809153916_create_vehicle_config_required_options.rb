class CreateVehicleConfigRequiredOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_required_options do |t|
      t.references :vehicle_config, foreign_key: true, index: {:name => "vehicle_config_option"}
      t.references :vehicle_option, foreign_key: true, index: {:name => "vehicle_config_option_link"}

      t.timestamps
    end
  end
end
