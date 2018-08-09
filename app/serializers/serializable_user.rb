# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableUser < JSONAPI::Serializable::Resource
  type :users

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
  attribute :email
  attribute :slack_username
  attribute :github_username
  attribute :avatar_url
  attribute :created_at
  attribute :updated_at
end
