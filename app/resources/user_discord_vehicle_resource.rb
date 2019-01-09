# Define how to query and persist a given model.
# Further Resource documentation: https://jsonapi-suite.github.io/jsonapi_compliable/JsonapiCompliable/Resource.html
class UserDiscordVehicleResource < ApplicationResource
  # Used for associating this resource with a given input.
  # This should match the 'type' in the corresponding serializer.
  type :user_discord_vehicles
  # Associate to a Model object so we know how to persist.
  model UserDiscordVehicle
  # Customize your resource here. Some common examples:
  #
  # === Allow ?filter[name] query parameter ===
  allow_filter :vehicle_config_id
  allow_filter :discord_user_id
  #
  # === Enable total count, when requested ===
  # allow_stat total: [:count]
  #
  # === Allow sideloading/sideposting of relationships ===
  belongs_to :vehicle_config,
    foreign_key: :vehicle_config_id,
    resource: VehicleConfigResource,
    scope: -> { VehicleConfig.all }
  #
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
