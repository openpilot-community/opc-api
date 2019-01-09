# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableUserDiscordVehicle < JSONAPI::Serializable::Resource
  type :user_discord_vehicles

  # Add attributes here to ensure they get rendered, .e.g.
  #
  attribute :discord_user_id

  # belongs_to :vehicle_config do
  #   data do
  #     if @object.vehicle_config_id
  #       @object.vehicle_config
  #     end
  #   end

  #   link :related do
  #     if @object.vehicle_config_id
  #       @url_helpers.vehicle_config_url(@object.vehicle_config_id)
  #     end
  #   end
  # end
  #
  # To customize, pass a block and reference the underlying @object
  # being serialized:
  #
  # attribute :name do
  #   @object.name.upcase
  # end
end
