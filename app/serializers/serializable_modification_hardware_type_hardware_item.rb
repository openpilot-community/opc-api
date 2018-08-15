# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableModificationHardwareTypeHardwareItem < JSONAPI::Serializable::Resource
  type :modification_hardware_type_hardware_items

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

  belongs_to :modification_hardware_type do
    data do
      if @object.modification_hardware_type_id
        @object.modification_hardware_type
      end
    end

    link :related do
      if @object.modification_hardware_type_id
        @url_helpers.modification_hardware_type_url(@object.modification_hardware_type_id)
      end
    end
  end

  belongs_to :hardware_item do
    data do
      if @object.hardware_item_id
        @object.hardware_item
      end
    end

    link :related do
      if @object.hardware_item_id
        @url_helpers.hardware_item_url(@object.hardware_item_id)
      end
    end
  end
end
