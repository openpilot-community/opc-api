class AddFieldsToVehicleTrims < ActiveRecord::Migration[5.2]
  def change
    add_column :vehicle_trims, :forward_collision_warning, :string
    add_column :vehicle_trims, :adaptive_cruise_control, :string
    add_column :vehicle_trims, :lane_departure_warning, :string
    add_column :vehicle_trims, :lane_keeping_assist, :string
    add_column :vehicle_trims, :blind_spot_warning, :string
    add_column :vehicle_trims, :rear_cross_traffic_alert, :string
    add_column :vehicle_trims, :back_up_camera, :string
    add_column :vehicle_trims, :adaptive_headlights, :string
    add_column :vehicle_trims, :antilock_braking_system, :string
    add_column :vehicle_trims, :automatic_emergency_braking, :string
    add_column :vehicle_trims, :automatic_parallel_parking, :string
    add_column :vehicle_trims, :backup_warning, :string
    add_column :vehicle_trims, :biycle_detection, :string
    add_column :vehicle_trims, :blind_spot_monitoring, :string
    add_column :vehicle_trims, :brake_assist, :string
    add_column :vehicle_trims, :curve_speed_warning, :string
    add_column :vehicle_trims, :drowsiness_alert, :string
    add_column :vehicle_trims, :electronic_stability_control, :string
    add_column :vehicle_trims, :high_speed_alert, :string
    add_column :vehicle_trims, :hill_descent_assist, :string
    add_column :vehicle_trims, :hill_start_assist, :string
    add_column :vehicle_trims, :left_turn_crash_avoidance, :string
    add_column :vehicle_trims, :pedestrian_detection, :string
    add_column :vehicle_trims, :push_button_start, :string
    add_column :vehicle_trims, :sideview_camera, :string
    add_column :vehicle_trims, :temperature_warning, :string
    add_column :vehicle_trims, :tire_pressure_monitoring_system, :string
    add_column :vehicle_trims, :traction_control, :string
  end
end
