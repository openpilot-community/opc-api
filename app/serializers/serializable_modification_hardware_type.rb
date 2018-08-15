# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableModificationHardwareType < JSONAPI::Serializable::Resource
  type :modification_hardware_types

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

  belongs_to :modification do
    data do
      if @object.modification_id
        @object.modification
      end
    end

    link :related do
      if @object.modification_id
        @url_helpers.modification_url(@object.modification_id)
      end
    end
  end

  belongs_to :hardware_type do
    data do
      if @object.hardware_type_id
        @object.hardware_type
      end
    end

    link :related do
      if @object.hardware_type_id
        @url_helpers.hardware_type_url(@object.hardware_type_id)
      end
    end
  end

  has_many :modification_hardware_type_hardware_items do
    data do
      @object.modification_hardware_type_hardware_items
    end

    link :related do
      @url_helpers.modification_hardware_type_hardware_items_url(filter: { modification_hardware_type_id: @object.id })
    end
  end
end
