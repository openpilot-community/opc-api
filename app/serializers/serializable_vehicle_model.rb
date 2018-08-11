# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleModel < JSONAPI::Serializable::Resource
 
  type :vehicle_models

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
  attribute :slug
  attribute :created_at
  attribute :updated_at
  attribute :has_configs
  # attribute :vehicle_make
  belongs_to :vehicle_make do
    data do
      if @object.vehicle_make_id
        @object.vehicle_make
      end
    end

    link :related do
      if @object.vehicle_make_id
        @url_helpers.vehicle_make_url(@object.vehicle_make_id)
      end
    end
  end

  
  has_many :vehicle_trims do
    data do
      @object.vehicle_trims
    end

    link :related do
      @url_helpers.vehicle_trims_url(filter: { vehicle_model_id: @object.id })
    end
  end
end
