class VehicleTrim < ApplicationRecord
  has_paper_trail
  before_create :set_slug
  belongs_to :vehicle_make, :optional => true
  belongs_to :vehicle_model, :optional => true
  belongs_to :forward_collision_warning, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :adaptive_cruise_control, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :lane_departure_warning, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :lane_keeping_assist, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :blind_spot_warning, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :rear_cross_traffic_alert, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :back_up_camera, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :adaptive_headlights, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :antilock_braking_system, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :automatic_emergency_braking, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :automatic_parallel_parking, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :backup_warning, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :biycle_detection, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :blind_spot_monitoring, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :brake_assist, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :curve_speed_warning, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :drowsiness_alert, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :electronic_stability_control, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :high_speed_alert, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :hill_descent_assist, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :hill_start_assist, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :left_turn_crash_avoidance, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :pedestrian_detection, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :push_button_start, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :sideview_camera, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :temperature_warning, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :tire_pressure_monitoring_system, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :traction_control, :class_name => "VehicleOptionAvailability", :optional => true
  belongs_to :obstacle_detection, :class_name => "VehicleOptionAvailability", :optional => true

  # def make_name
  #   vehicle_make.name
  # end

  # def model_name
  #   vehicle_model.name
  # end
  private
  def set_slug
    loop do
      self.slug = SecureRandom.uuid
      break unless VehicleMake.where(slug: slug).exists?
    end
  end
end
