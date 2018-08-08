class AddObstacleDetectionToVehicleTrims < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_trims, :obstacle_detection, :integer
  end
end
