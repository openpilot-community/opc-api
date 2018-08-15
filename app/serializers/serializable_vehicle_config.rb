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
  attribute :year
  attribute :description
  attribute :slug
  attribute :diff_from_parent
  attribute :created_at
  attribute :updated_at
  belongs_to :parent do
    data do
      if @object.parent_id
        @object.parent
      end
    end

    link :related do
      if @object.parent_id
        @url_helpers.vehicle_config_url(@object.parent_id)
      end
    end
  end
  
  belongs_to :vehicle_config_type do
    data do
      if @object.vehicle_config_type_id
        @object.vehicle_config_type
      end
    end

    link :related do
      if @object.vehicle_config_type_id
        @url_helpers.vehicle_config_type_url(@object.vehicle_config_type_id)
      end
    end
  end

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
  belongs_to :vehicle_make_package do
    data do
      if @object.vehicle_make_package_id
        @object.vehicle_make_package
      end
    end

    link :related do
      if @object.vehicle_make_package_id
        @url_helpers.vehicle_make_package_url(@object.vehicle_make_package_id)
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

  has_many :forks do
    data do
      @object.forks
    end

    link :related do
      @url_helpers.vehicle_configs_url(filter: { parent_id: @object.id })
    end
  end

  has_many :vehicle_config_capabilities do
    data do
      @object.vehicle_config_capabilities
    end

    link :related do
      @url_helpers.vehicle_config_capabilities_url(filter: { vehicle_config_id: @object.id })
    end
  end

  has_many :vehicle_config_modifications do
    data do
      @object.vehicle_config_modifications
    end

    link :related do
      @url_helpers.vehicle_config_modifications_url(filter: { vehicle_config_id: @object.id })
    end
  end
  has_many :vehicle_config_videos do
    data do
      @object.vehicle_config_videos
    end

    link :related do
      @url_helpers.vehicle_config_videos_url(filter: { vehicle_config_id: @object.id })
    end
  end
  # has_many :vehicle_config_hardware_items do
  #   data do
  #     @object.vehicle_config_hardware_items
  #   end

  #   link :related do
  #     @url_helpers.vehicle_config_hardware_items_url(filter: { vehicle_config_id: @object.id })
  #   end
  # end
  # meta do
  #   { featured: true }
  # end
end
