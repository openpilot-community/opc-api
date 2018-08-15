# Define how to query and persist a given model.
# Further Resource documentation: https://jsonapi-suite.github.io/jsonapi_compliable/JsonapiCompliable/Resource.html
class VehicleConfigModificationResource < ApplicationResource
  # Used for associating this resource with a given input.
  # This should match the 'type' in the corresponding serializer.
  type :vehicle_config_modifications
  # Associate to a Model object so we know how to persist.
  model VehicleConfigModification
  # Customize your resource here. Some common examples:
  #
  # === Allow ?filter[name] query parameter ===
  # allow_filter :name
  #
  # === Enable total count, when requested ===
  # allow_stat total: [:count]
  #
  # === Allow sideloading/sideposting of relationships ===
  # belongs_to :foo,
  #   foreign_key: :foo_id,
  #   resource: FooResource,
  #   scope: -> { Foo.all }
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
  belongs_to :vehicle_config,
    scope: -> { VehicleConfig.all },
    resource: VehicleConfigResource,
    foreign_key: :vehicle_config_id
    
  belongs_to :modification,
    scope: -> { Modification.all },
    resource: ModificationResource,
    foreign_key: :modification_id
  #
  # === Change default page size ===
  # default_page_size(10)
  #
  # === Change how we resolve the scope ===
  # def resolve(scope)
  #   ... code ...
  # end
end
