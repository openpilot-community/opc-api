# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleMakePackage < JSONAPI::Serializable::Resource
  type :vehicle_make_packages

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
end
