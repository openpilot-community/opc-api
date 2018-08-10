# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableVehicleConfig < JSONAPI::Serializable::Resource
  
  type :vehicle_configs

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
  attribute :description
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

  belongs_to :vehicle_model do
    data do
      @object.vehicle_model
    end

    link :related do
      @url_helpers.vehicle_model_url(@object.vehicle_model_id)
    end
  end

  # belongs_to :vehicle_trim do
  #   data do
  #     @object.vehicle_trim
  #   end

  #   link :related do
  #     @url_helpers.vehicle_trim_url(@object.vehicle_trim_id)
  #   end
  # end

  belongs_to :vehicle_config_status do
    data do
      @object.vehicle_config_status
    end

    link :related do
      @url_helpers.vehicle_config_status_url(@object.vehicle_config_status_id)
    end
  end
  # meta do
  #   { featured: true }
  # end
end
