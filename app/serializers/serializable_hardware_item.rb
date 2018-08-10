# Serializers define the rendered JSON for a model instance.
# We use jsonapi-rb, which is similar to active_model_serializers.
class SerializableHardwareItem < JSONAPI::Serializable::Resource
  type :hardware_items

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
  attribute :alternate_name
  attribute :description
  attribute :compatible_with_all_vehicles
  attribute :available_for_purchase
  attribute :purchase_url
  attribute :requires_assembly
  attribute :can_be_built
  attribute :build_plans_url
  attribute :notes
  attribute :image_url
  attribute :install_guide_url
  attribute :created_at
  attribute :updated_at
end
