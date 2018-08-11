# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableContributor < JSONAPI::Serializable::Resource
  type :contributors

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
  attribute :username
  attribute :avatar_url
  attribute :html_url
  attribute :contributions
  attribute :created_at
  attribute :updated_at
end
