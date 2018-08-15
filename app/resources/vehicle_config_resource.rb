# Define how to query and persist a given model.
# Further Resource documentation: https://jsonapi-suite.github.io/jsonapi_compliable/JsonapiCompliable/Resource.html
class VehicleConfigResource < ApplicationResource
  # Used for associating this resource with a given input.
  # This should match the 'type' in the corresponding serializer.
  type :vehicle_configs
  # Associate to a Model object so we know how to persist.
  model VehicleConfig
  # Customize your resource here. Some common examples:
  #

  default_page_size(200)

  # === Allow ?filter[name] query parameter ===
  allow_filter :vehicle_config_status_id
  allow_filter :vehicle_make_id
  allow_filter :vehicle_model_id
  allow_filter :parent_id
  #
  # === Enable total count, when requested ===
  # allow_stat total: [:count]
  #
  # === Allow sideloading/sideposting of relationships ===
  belongs_to :vehicle_make,
    scope: -> { VehicleMake.all },
    resource: VehicleMakeResource,
    foreign_key: :vehicle_make_id

  belongs_to :vehicle_model,
    scope: -> { VehicleModel.all },
    resource: VehicleModelResource,
    foreign_key: :vehicle_model_id

  belongs_to :vehicle_config_type,
    scope: -> { VehicleConfigType.all },
    resource: VehicleConfigTypeResource,
    foreign_key: :vehicle_config_type_id
  
  belongs_to :vehicle_config_status,
    scope: -> { VehicleConfigStatus.all },
    resource: VehicleConfigStatusResource,
    foreign_key: :vehicle_config_status_id

  belongs_to :vehicle_make_package,
    scope: -> { VehicleMakePackage.all },
    resource: VehicleMakePackageResource,
    foreign_key: :vehicle_make_package_id

  belongs_to :parent,
    scope: -> { VehicleConfig.all },
    resource: VehicleConfigResource,
    foreign_key: :parent_id
  
  has_many :forks,
    scope: -> { VehicleConfig.all },
    resource: VehicleConfigResource,
    foreign_key: :parent_id
  
  has_many :vehicle_config_capabilities,
    scope: -> { VehicleConfigCapability.all },
    resource: VehicleConfigCapabilityResource,
    foreign_key: :vehicle_config_id
   
  has_many :vehicle_config_modifications,
    scope: -> { VehicleConfigModification.all },
    resource: VehicleConfigModificationResource,
    foreign_key: :vehicle_config_id
  
  has_many :vehicle_config_videos,
    scope: -> { VehicleConfigVideo.all },
    resource: VehicleConfigVideoResource,
    foreign_key: :vehicle_config_id
  
  has_many :vehicle_config_hardware_items,
    scope: -> { VehicleConfigHardwareItem.all },
    resource: VehicleConfigHardwareItemResource,
    foreign_key: :vehicle_config_id
end
