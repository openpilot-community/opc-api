# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleConfigPullRequest < JSONAPI::Serializable::Resource
  type :vehicle_config_pull_requests

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
  attribute :pull_request_id
  attribute :created_at
  attribute :updated_at
end
