# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleOption < JSONAPI::Serializable::Resource
  type :vehicle_options

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
  attribute :name
  attribute :description
  attribute :created_at
  attribute :updated_at
  attribute :alternate_name
  attribute :what_it_does
  attribute :what_it_doesnt_do
  attribute :reference_url
end
