# Define how to query and persist a given model.
# Further Resource documentation: https://jsonapi-suite.github.io/jsonapi_compliable/JsonapiCompliable/Resource.html
class VehicleTrimResource < ApplicationResource
  # Used for associating this resource with a given input.
  # This should match the 'type' in the corresponding serializer.
  type :vehicle_trims
  # Associate to a Model object so we know how to persist.
  model VehicleTrim
  # Customize your resource here. Some common examples:
  #
  default_page_size(200)
  default_sort([{ name: :asc }])
  allow_filter :year
  allow_filter :vehicle_make_id
  allow_filter :vehicle_model_id
  # === Allow ?filter[name] query parameter ===
  # allow_filter :name
  #
  # === Enable total count, when requested ===
  # allow_stat total: [:count]
  #
  # === Allow sideloading/sideposting of relationships ===
  # belongs_to :foo,
  #   foreign_key: :foo_id,
  #   resource: FooResource,
  #   scope: -> { Foo.all }
  #
  belongs_to :vehicle_make,
    scope: -> { VehicleMake.all },
    resource: VehicleMakeResource,
    foreign_key: :vehicle_make_id
    
  belongs_to :vehicle_model,
    scope: -> { VehicleModel.all },
    resource: VehicleModelResource,
    foreign_key: :vehicle_model_id
  
  belongs_to :forward_collision_warning, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :forward_collision_warning
  belongs_to :adaptive_cruise_control, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :adaptive_cruise_control
  belongs_to :lane_departure_warning, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :lane_departure_warning
  belongs_to :lane_keeping_assist, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :lane_keeping_assist
  belongs_to :blind_spot_warning, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :blind_spot_warning
  belongs_to :rear_cross_traffic_alert, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :rear_cross_traffic_alert
  belongs_to :back_up_camera, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :back_up_camera
  belongs_to :adaptive_headlights, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :adaptive_headlights
  belongs_to :antilock_braking_system, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :antilock_braking_system
  belongs_to :automatic_emergency_braking, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :automatic_emergency_braking
  belongs_to :automatic_parallel_parking, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :automatic_parallel_parking
  belongs_to :backup_warning, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :backup_warning
  belongs_to :biycle_detection, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :biycle_detection
  belongs_to :blind_spot_monitoring, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :blind_spot_monitoring
  belongs_to :brake_assist, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :brake_assist
  belongs_to :curve_speed_warning, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :curve_speed_warning
  belongs_to :drowsiness_alert, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :drowsiness_alert
  belongs_to :electronic_stability_control, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :electronic_stability_control
  belongs_to :high_speed_alert, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :high_speed_alert
  belongs_to :hill_descent_assist, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :hill_descent_assist
  belongs_to :hill_start_assist, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :hill_start_assist
  belongs_to :left_turn_crash_avoidance, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :left_turn_crash_avoidance
  belongs_to :pedestrian_detection, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :pedestrian_detection
  belongs_to :push_button_start, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :push_button_start
  belongs_to :sideview_camera, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :sideview_camera
  belongs_to :temperature_warning, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :temperature_warning
  belongs_to :tire_pressure_monitoring_system, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :tire_pressure_monitoring_system
  belongs_to :traction_control, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :traction_control
  belongs_to :obstacle_detection, 
    scope: -> { VehicleOptionAvailability.all },
    resource: VehicleOptionAvailabilityResource,
    foreign_key: :obstacle_detection
  
  # === Custom sorting logic ===
  # sort do |scope, att, dir|
  #   ... code ...
  # end
  #
  # === Change default sort ===
  # default_sort([{ title: :asc }])
  #
  # === Custom pagination logic ===
  # paginate do |scope, current_page, per_page|
  #   ... code ...
  # end
  #
  # === Change default page size ===
  # default_page_size(10)
  #
  # === Change how we resolve the scope ===
  # def resolve(scope)
  #   ... code ...
  # end
end
