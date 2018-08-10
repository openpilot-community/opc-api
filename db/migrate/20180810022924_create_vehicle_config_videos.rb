class CreateVehicleConfigVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_config_videos do |t|
      t.references :vehicle_config, foreign_key: true
      t.references :video, foreign_key: true

      t.timestamps
    end
  end
end
