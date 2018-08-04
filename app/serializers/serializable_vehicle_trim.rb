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
  belongs_to :vehicle_make
  belongs_to :vehicle_model
  belongs_to :vehicle_trim
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
