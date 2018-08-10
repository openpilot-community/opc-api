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
    
  # belongs_to :vehicle_trim,
  #   scope: -> { VehicleTrim.all },
  #   resource: VehicleTrimResource,
  #   foreign_key: :vehicle_trim_id

  belongs_to :vehicle_config_status,
    scope: -> { VehicleConfigStatus.all },
    resource: VehicleConfigStatusResource,
    foreign_key: :vehicle_config_status_id
  # === Custom sorting logic ===
  # sort do |scope, att, dir|
  #   ... code ...
  # end
  #
  # === Change default sort ===
  # default_sort([{ title: :asc }])
  #
  # === Custom pagination logic ===
  # paginate do |scope, current_page, per_page|
  #   ... code ...
  # end
  #
  # === Change default page size ===
  # default_page_size(10)
  #
  # === Change how we resolve the scope ===
  # def resolve(scope)
  #   ... code ...
  # end
end
