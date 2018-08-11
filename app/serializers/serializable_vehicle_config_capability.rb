# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleConfigCapability < JSONAPI::Serializable::Resource
  type :vehicle_config_capabilities

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
  attribute :vehicle_config_id
  attribute :vehicle_capability_id
  attribute :kph
  attribute :timeout
  attribute :confirmed
  attribute :confirmed_by
  attribute :notes
  attribute :created_at
  attribute :updated_at
  attribute :vehicle_config_type_id
end
