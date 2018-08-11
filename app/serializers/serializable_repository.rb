# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableRepository < JSONAPI::Serializable::Resource
  type :repositories

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
  attribute :full_name
  attribute :owner_login
  attribute :owner_avatar_url
  attribute :owner_url
  attribute :url
  attribute :created_at
  attribute :updated_at
end
