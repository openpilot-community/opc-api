# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleModelOption < JSONAPI::Serializable::Resource
  type :vehicle_model_options

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
  attribute :vehicle_year
  attribute :vehicle_make_id
  attribute :vehicle_model_id
  attribute :vehicle_option_id
  attribute :vehicle_option_availability_id
  attribute :created_at
  attribute :updated_at
end
