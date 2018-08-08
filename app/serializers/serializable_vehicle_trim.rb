# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleTrim < JSONAPI::Serializable::Resource

  type :vehicle_trims

  # Add attributes here to ensure they get rendered, .e.g.
  #
  # attribute :name
  #
  # To customize, pass a block and reference the underlying @object
  # being serialized:
  #
  # attribute :name do
  #   @object.name.upcase
  # end
  # attribute :vehicle_make
  # attribute :vehicle_model
  belongs_to :vehicle_make do
    data do
      if @object.vehicle_make_id
        @object.vehicle_make
      end
    end

    link :related do
      if @object.vehicle_make_id
        @url_helpers.vehicle_make_url(@object.vehicle_make_id)
      end
    end
  end

  belongs_to :vehicle_model do
    data do
      if @object.vehicle_model_id
        @object.vehicle_model
      end
    end

    link :related do
      if @object.vehicle_model_id
        @url_helpers.vehicle_model_url(@object.vehicle_model_id)
      end
    end
  end

  belongs_to :forward_collision_warning do
    data do
      if @object.forward_collision_warning
        @object.forward_collision_warning
      end
    end
    
    link :related do
      if @object.forward_collision_warning
        @url_helpers.vehicle_option_availability_url(@object.forward_collision_warning)
      end
    end
  end
  belongs_to :adaptive_cruise_control do
    data do
      if @object.adaptive_cruise_control
        @object.adaptive_cruise_control
      end
    end
    
    link :related do
      if @object.adaptive_cruise_control
        @url_helpers.vehicle_option_availability_url(@object.adaptive_cruise_control)
      end
    end
  end
  belongs_to :lane_departure_warning do
    data do
      if @object.lane_departure_warning
        @object.lane_departure_warning
      end
    end
    
    link :related do
      if @object.lane_departure_warning
        @url_helpers.vehicle_option_availability_url(@object.lane_departure_warning)
      end
    end
  end
  belongs_to :lane_keeping_assist do
    data do
      if @object.lane_keeping_assist
        @object.lane_keeping_assist
      end
    end
    
    link :related do
      if @object.lane_keeping_assist
        @url_helpers.vehicle_option_availability_url(@object.lane_keeping_assist)
      end
    end
  end
  belongs_to :blind_spot_warning do
    data do
      if @object.blind_spot_warning
        @object.blind_spot_warning
      end
    end
    
    link :related do
      if @object.blind_spot_warning
        @url_helpers.vehicle_option_availability_url(@object.blind_spot_warning)
      end
    end
  end
  belongs_to :rear_cross_traffic_alert do
    data do
      if @object.rear_cross_traffic_alert
        @object.rear_cross_traffic_alert
      end
    end
    
    link :related do
      if @object.rear_cross_traffic_alert
        @url_helpers.vehicle_option_availability_url(@object.rear_cross_traffic_alert)
      end
    end
  end
  belongs_to :back_up_camera do
    data do
    if @object.back_up_camera
        @object.back_up_camera
      end
  end
  
  link :related do
    if @object.back_up_camera
      @url_helpers.vehicle_option_availability_url(@object.back_up_camera)
    end
  end
end
  belongs_to :adaptive_headlights do
    data do
      if @object.adaptive_headlights
        @object.adaptive_headlights
      end
    end
    
    link :related do
      if @object.adaptive_headlights
        @url_helpers.vehicle_option_availability_url(@object.adaptive_headlights)
      end
    end
  end
  belongs_to :antilock_braking_system do
    data do
      if @object.antilock_braking_system
        @object.antilock_braking_system
      end
    end
    
    link :related do
      if @object.antilock_braking_system
        @url_helpers.vehicle_option_availability_url(@object.antilock_braking_system)
      end
    end
  end
  belongs_to :automatic_emergency_braking do
    data do
      if @object.automatic_emergency_braking
        @object.automatic_emergency_braking
      end
    end
    
    link :related do
      if @object.automatic_emergency_braking
        @url_helpers.vehicle_option_availability_url(@object.automatic_emergency_braking)
      end
    end
  end
  belongs_to :automatic_parallel_parking do
    data do
      if @object.automatic_parallel_parking
        @object.automatic_parallel_parking
      end
    end
    
    link :related do
      if @object.automatic_parallel_parking
        @url_helpers.vehicle_option_availability_url(@object.automatic_parallel_parking)
      end
    end
  end
  belongs_to :backup_warning do
    data do
    if @object.backup_warning
        @object.backup_warning
      end
  end
  
  link :related do
    if @object.backup_warning
      @url_helpers.vehicle_option_availability_url(@object.backup_warning)
    end
  end
end
  belongs_to :biycle_detection do
    data do
     if @object.biycle_detection
      @object.biycle_detection
     end
    end
    
    link :related do
    if @object.biycle_detection
        @url_helpers.vehicle_option_availability_url(@object.biycle_detection)
      end
    end
  end
  belongs_to :blind_spot_monitoring do
    data do
      if @object.blind_spot_monitoring
        @object.blind_spot_monitoring
      end
    end
    
    link :related do
      if @object.blind_spot_monitoring
        @url_helpers.vehicle_option_availability_url(@object.blind_spot_monitoring)
      end
    end
  end
  belongs_to :brake_assist do
    data do
    if @object.brake_assist
        @object.brake_assist
      end
  end
  
  link :related do
    if @object.brake_assist
      @url_helpers.vehicle_option_availability_url(@object.brake_assist)
    end
  end
end
  belongs_to :curve_speed_warning do
    data do
      if @object.curve_speed_warning
        @object.curve_speed_warning
      end
    end
    
    link :related do
      if @object.curve_speed_warning
        @url_helpers.vehicle_option_availability_url(@object.curve_speed_warning)
      end
    end
  end
  belongs_to :drowsiness_alert do
    data do
     if @object.drowsiness_alert
      @object.drowsiness_alert
     end
    end
    
    link :related do
    if @object.drowsiness_alert
        @url_helpers.vehicle_option_availability_url(@object.drowsiness_alert)
      end
    end
  end
  belongs_to :electronic_stability_control do
    data do
      if @object.electronic_stability_control
        @object.electronic_stability_control
      end
    end
    
    link :related do
      if @object.electronic_stability_control
        @url_helpers.vehicle_option_availability_url(@object.electronic_stability_control)
      end
    end
  end
  belongs_to :high_speed_alert do
    data do
     if @object.high_speed_alert
      @object.high_speed_alert
     end
    end
    
    link :related do
    if @object.high_speed_alert
        @url_helpers.vehicle_option_availability_url(@object.high_speed_alert)
      end
    end
  end
  belongs_to :hill_descent_assist do
    data do
      if @object.hill_descent_assist
        @object.hill_descent_assist
      end
    end
    
    link :related do
      if @object.hill_descent_assist
        @url_helpers.vehicle_option_availability_url(@object.hill_descent_assist)
      end
    end
  end
  belongs_to :hill_start_assist do
    data do
     if @object.hill_start_assist
      @object.hill_start_assist
     end
    end
    
    link :related do
    if @object.hill_start_assist
        @url_helpers.vehicle_option_availability_url(@object.hill_start_assist)
      end
    end
  end
  belongs_to :left_turn_crash_avoidance do
    data do
      if @object.left_turn_crash_avoidance
        @object.left_turn_crash_avoidance
      end
    end
    
    link :related do
      if @object.left_turn_crash_avoidance
        @url_helpers.vehicle_option_availability_url(@object.left_turn_crash_avoidance)
      end
    end
  end
  belongs_to :pedestrian_detection do
    data do
      if @object.pedestrian_detection
        @object.pedestrian_detection
      end
    end
    
    link :related do
      if @object.pedestrian_detection
        @url_helpers.vehicle_option_availability_url(@object.pedestrian_detection)
      end
    end
  end
  belongs_to :push_button_start do
    data do
     if @object.push_button_start
      @object.push_button_start
     end
    end
    
    link :related do
    if @object.push_button_start
        @url_helpers.vehicle_option_availability_url(@object.push_button_start)
      end
    end
  end
  belongs_to :sideview_camera do
    data do
     if @object.sideview_camera
      @object.sideview_camera
     end
    end
    
    link :related do
    if @object.sideview_camera
        @url_helpers.vehicle_option_availability_url(@object.sideview_camera)
      end
    end
  end
  belongs_to :temperature_warning do
    data do
      if @object.temperature_warning
        @object.temperature_warning
      end
    end
    
    link :related do
      if @object.temperature_warning
        @url_helpers.vehicle_option_availability_url(@object.temperature_warning)
      end
    end
  end
  belongs_to :tire_pressure_monitoring_system do
    data do
      if @object.tire_pressure_monitoring_system
        @object.tire_pressure_monitoring_system
      end
    end
    
    link :related do
      if @object.tire_pressure_monitoring_system
        @url_helpers.vehicle_option_availability_url(@object.tire_pressure_monitoring_system)
      end
    end
  end
  belongs_to :traction_control do
    data do
     if @object.traction_control
      @object.traction_control
     end
    end
    
    link :related do
    if @object.traction_control
        @url_helpers.vehicle_option_availability_url(@object.traction_control)
      end
    end
  end
  belongs_to :obstacle_detection do
    data do
      if @object.obstacle_detection
        @object.obstacle_detection
      end
    end
    
    link :related do
      if @object.obstacle_detection
        @url_helpers.vehicle_option_availability_url(@object.obstacle_detection)
      end
    end
  end


  attribute :make_id
  attribute :make_display
  attribute :name
  attribute :trim
  attribute :year
  attribute :body
  attribute :engine_position
  attribute :engine_cc
  attribute :engine_cyl
  attribute :engine_type
  attribute :engine_valves_per_cyl
  attribute :engine_power_ps
  attribute :engine_power_rpm
  attribute :engine_torque_nm
  attribute :engine_torque_rpm
  attribute :engine_bore_mm
  attribute :engine_stroke_mm
  attribute :engine_compression
  attribute :engine_fuel
  attribute :top_speed_kph
  attribute :zero_to_100_kph
  attribute :drive
  attribute :drive2
  attribute :seats
  attribute :seats2
  attribute :weight_kg
  attribute :length_mm
  attribute :width_mm
  attribute :height_mm
  attribute :wheelbase_mm
  attribute :lkm_hwy
  attribute :lkm_mixed
  attribute :lkm_city
  attribute :fuel_cap_l
  attribute :sold_in_us
  attribute :co2
  attribute :created_at
  attribute :updated_at
end
