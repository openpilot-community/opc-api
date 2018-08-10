# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleMake < JSONAPI::Serializable::Resource

  type :vehicle_makes

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
  attribute :has_configs
  attribute :created_at
  attribute :updated_at

  has_many :vehicle_trims do
    data do
      @object.vehicle_trims
    end

    link :related do
      @url_helpers.vehicle_trims_url(filter: { vehicle_make_id: @object.id })
    end
  end
  
  has_many :vehicle_models do
    data do
      @object.vehicle_models
    end

    link :related do
      @url_helpers.vehicle_models_url(filter: { vehicle_make_id: @object.id })
    end
  end
end
