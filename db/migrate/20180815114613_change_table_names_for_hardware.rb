class ChangeTableNamesForHardware < ActiveRecord::Migration[5.2]
  def change
    rename_table :vehicle_config_hardwares, :vehicle_config_hardware_items
    rename_table :video_hardwares, :video_hardware_items
  end
end
