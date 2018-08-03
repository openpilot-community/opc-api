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
