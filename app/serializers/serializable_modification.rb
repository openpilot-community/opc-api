# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableModification < JSONAPI::Serializable::Resource
  type :modifications

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
  attribute :summary
  attribute :description
  attribute :instructions
  attribute :slug
  attribute :created_at
  attribute :updated_at

  has_many :modification_hardware_types do
    data do
      @object.modification_hardware_types
    end

    link :related do
      @url_helpers.modification_hardware_types_url(filter: { modification_id: @object.id })
    end
  end
end
