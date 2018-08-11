# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableLogin < JSONAPI::Serializable::Resource
  type :logins

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
  attribute :identification
  attribute :password_digest
  attribute :oauth2_token
  attribute :uid
  attribute :single_use_oauth2_token
  attribute :user_id
  attribute :created_at
  attribute :updated_at
  attribute :provider
end
