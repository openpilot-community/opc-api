# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVideo < JSONAPI::Serializable::Resource
  type :videos

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
  attribute :title
  attribute :video_url
  attribute :provider_name
  attribute :author
  attribute :author_url
  attribute :thumbnail_url
  attribute :description
  attribute :html
  attribute :uploaded_at
  attribute :created_at
  attribute :updated_at
end
