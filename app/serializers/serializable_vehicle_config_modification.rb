# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleConfigModification < JSONAPI::Serializable::Resource
  type :vehicle_config_modifications

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

  belongs_to :vehicle_config do
    data do
      @object.vehicle_config
    end

    link :related do
      @url_helpers.vehicle_config_url(@object.vehicle_config_id)
    end
  end
  belongs_to :modification do
    data do
      @object.modification
    end

    link :related do
      @url_helpers.modification_url(@object.modification_id)
    end
  end
end
