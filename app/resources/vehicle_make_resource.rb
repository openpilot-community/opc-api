# Define how to query and persist a given model.
# Further Resource documentation: https://jsonapi-suite.github.io/jsonapi_compliable/JsonapiCompliable/Resource.html
class VehicleMakeResource < ApplicationResource
  # Used for associating this resource with a given input.
  # This should match the 'type' in the corresponding serializer.
  type :vehicle_makes
  # Associate to a Model object so we know how to persist.
  model VehicleMake
  # Customize your resource here. Some common examples:
  #
  default_page_size(200)
  default_sort([{ name: :asc }])
  # === Allow ?filter[name] query parameter ===
  allow_filter :with_configs do |scope, value|
    scope.with_configs
  end
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
  # allow_filter :vehicle_
  has_many :vehicle_models,
    scope: -> { VehicleModel.all },
    resource: VehicleModelResource,
    foreign_key: :vehicle_make_id
  
  # has_many :vehicle_models_with_configs,
  #   scope: -> { VehicleModel.all },
  #   resource: VehicleModelResource,
  #   foreign_key: :vehicle_make_id

  has_many :vehicle_configs,
    scope: -> { VehicleConfig.all },
    resource: VehicleConfigResource,
    foreign_key: :vehicle_make_id
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
