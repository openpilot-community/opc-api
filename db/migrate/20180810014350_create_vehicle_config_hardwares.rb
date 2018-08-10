class CreateVehicleConfigHardwares < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_hardwares do |t|
      t.references :vehicle_config, :foreign_key => true
      t.references :hardware_item, :foreign_key => true
      t.timestamps
    end
  end
end
