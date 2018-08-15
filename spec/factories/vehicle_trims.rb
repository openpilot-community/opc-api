# == Schema Information
#
# Table name: vehicle_trims
#
#  id                              :bigint(8)        not null, primary key
#  vehicle_make_id                 :bigint(8)
#  vehicle_model_id                :bigint(8)
#  make_id                         :string
#  make_display                    :string
#  name                            :string
#  trim                            :string
#  year                            :string
#  body                            :string
#  engine_position                 :string
#  engine_cc                       :integer
#  engine_cyl                      :integer
#  engine_type                     :string
#  engine_valves_per_cyl           :integer
#  engine_power_ps                 :string
#  engine_power_rpm                :integer
#  engine_torque_nm                :string
#  engine_torque_rpm               :integer
#  engine_bore_mm                  :float
#  engine_stroke_mm                :float
#  engine_compression              :string
#  engine_fuel                     :string
#  top_speed_kph                   :integer
#  zero_to_100_kph                 :integer
#  drive                           :string
#  drive2                          :string
#  seats                           :integer
#  seats2                          :integer
#  weight_kg                       :integer
#  length_mm                       :float
#  width_mm                        :float
#  height_mm                       :float
#  wheelbase_mm                    :float
#  lkm_hwy                         :float
#  lkm_mixed                       :float
#  lkm_city                        :float
#  fuel_cap_l                      :integer
#  sold_in_us                      :boolean
#  co2                             :string
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  forward_collision_warning       :integer
#  adaptive_cruise_control         :integer
#  lane_departure_warning          :integer
#  lane_keeping_assist             :integer
#  blind_spot_warning              :integer
#  rear_cross_traffic_alert        :integer
#  back_up_camera                  :integer
#  adaptive_headlights             :integer
#  antilock_braking_system         :integer
#  automatic_emergency_braking     :integer
#  automatic_parallel_parking      :integer
#  backup_warning                  :integer
#  biycle_detection                :integer
#  blind_spot_monitoring           :integer
#  brake_assist                    :integer
#  curve_speed_warning             :integer
#  drowsiness_alert                :integer
#  electronic_stability_control    :integer
#  high_speed_alert                :integer
#  hill_descent_assist             :integer
#  hill_start_assist               :integer
#  left_turn_crash_avoidance       :integer
#  pedestrian_detection            :integer
#  push_button_start               :integer
#  sideview_camera                 :integer
#  temperature_warning             :integer
#  tire_pressure_monitoring_system :integer
#  traction_control                :integer
#  obstacle_detection              :integer
#

FactoryBot.define do
  factory :vehicle_trim do
    # vehicle_make nil
    # vehicle_model nil
    make_id "MyString"
    make_display "MyString"
    name "MyString"
    trim "MyString"
    year "MyString"
    body "MyString"
    engine_position "MyString"
    engine_cc 1
    engine_cyl 1
    engine_type "MyString"
    engine_valves_per_cyl 1
    engine_power_ps "MyString"
    engine_power_rpm 1
    engine_torque_nm "MyString"
    engine_torque_rpm 1
    engine_bore_mm 1.5
    engine_stroke_mm 1.5
    engine_compression "MyString"
    engine_fuel "MyString"
    top_speed_kph 1
    zero_to_100_kph 1
    drive "MyString"
    drive2 "MyString"
    seats 1
    seats2 1
    weight_kg 1
    length_mm 1.5
    width_mm 1.5
    height_mm 1.5
    wheelbase_mm 1.5
    lkm_hwy 1.5
    lkm_mixed 1.5
    lkm_city 1.5
    fuel_cap_l 1
    sold_in_us false
    co2 "MyString"
  end
end
