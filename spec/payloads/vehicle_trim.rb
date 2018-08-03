# Register a payload to validate against.
# Add expected attributes within this block, e.g.:
#
# key(:name)
#
# Optionally validate the type as well:
#
# key(:name, String)
#
# This will:
#
# * Compare record.name == json['name']
# * Ensure no extra keys are in the json payload
# * Ensure no values are nil (unless allow_nil: true is passed)
# * Ensures json['name'] is a string
#
# If you have custom serialization logic and want to compare against
# something other than "record.name", pass a block:
#
# key(:name) { |record| record.name.upcase }
#
# Or, if this is a one-off for a particular spec, do that customization at
# runtime:
#
# assert_payload(:person, person_record, json_item) do
#   key(:name) { 'Homer Simpson' }
# end
#
# For more information, see https://jsonapi-suite.github.io/jsonapi_spec_helpers/
JsonapiSpecHelpers::Payload.register(:vehicle_trim) do
  # key(:vehicle_make, Reference)
  # key(:vehicle_model, Reference)
  key(:make_id, String)
  key(:make_display, String)
  key(:name, String)
  key(:trim, String)
  key(:year, String)
  key(:body, String)
  key(:engine_position, String)
  key(:engine_cc, Integer)
  key(:engine_cyl, Integer)
  key(:engine_type, String)
  key(:engine_valves_per_cyl, Integer)
  key(:engine_power_ps, String)
  key(:engine_power_rpm, Integer)
  key(:engine_torque_nm, String)
  key(:engine_torque_rpm, Integer)
  key(:engine_bore_mm, Float)
  key(:engine_stroke_mm, Float)
  key(:engine_compression, String)
  key(:engine_fuel, String)
  key(:top_speed_kph, Integer)
  key(:zero_to_100_kph, Integer)
  key(:drive, String)
  key(:drive2, String)
  key(:seats, Integer)
  key(:seats2, Integer)
  key(:weight_kg, Integer)
  key(:length_mm, Float)
  key(:width_mm, Float)
  key(:height_mm, Float)
  key(:wheelbase_mm, Float)
  key(:lkm_hwy, Float)
  key(:lkm_mixed, Float)
  key(:lkm_city, Float)
  key(:fuel_cap_l, Integer)
  key(:sold_in_us, [TrueClass, FalseClass])
  key(:co2, String)
end
