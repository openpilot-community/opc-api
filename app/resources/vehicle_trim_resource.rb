# Define how to query and persist a given model.
# Further Resource documentation: https://jsonapi-suite.github.io/jsonapi_compliable/JsonapiCompliable/Resource.html
class VehicleTrimResource < ApplicationResource
  # Used for associating this resource with a given input.
  # This should match the 'type' in the corresponding serializer.
  type :vehicle_trims
  # Associate to a Model object so we know how to persist.
  model VehicleTrim
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
  belongs_to :vehicle_make,
    scope: -> { VehicleMake.all },
    resource: VehicleMakeResource,
    foreign_key: :vehicle_make_id
  belongs_to :vehicle_model,
    scope: -> { VehicleModel.all },
    resource: VehicleModelResource,
    foreign_key: :vehicle_model_id
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
