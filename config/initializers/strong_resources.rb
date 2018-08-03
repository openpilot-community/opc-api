# Define payloads that can be re-used across endpoints.
#
# For instance, you may create Tag objects via the /tags endpoint.
# You may also sidepost Tag objects via the /posts endpoint.
# Here is where the Tag payload can be defined. For example:
#
# strong_resource :tag do
#   attribute :name, :string
#   attribute :active, :boolean
# end
#
# You can now reference this payload across controllers:
#
# class TagsController < ApplicationController
#   strong_resource :tag
# end
#
# class PostsController < ApplicationController
#   strong_resource :post do
#     has_many :tags, disassociate: true, destroy: true
#   end
# end
#
# Custom types can be added here as well:
# Parameters = ActionController::Parameters
# strong_param :pet_type, swagger: :string, type: Parameters.enum('Dog', 'Cat')
#
# strong_resource :pet do
#   attribute :type, :pet_type
# end
#
# For additional documentation, see https://jsonapi-suite.github.io/strong_resources
StrongResources.configure do
  strong_resource :vehicle_config do
    attribute :title, :string
    attribute :description, :string
    attribute :created_at, :string
    attribute :updated_at, :string
  end
  strong_resource :vehicle_config_status do
    attribute :name, :string
    attribute :description, :string
    attribute :created_at, :string
    attribute :updated_at, :string
  end
  strong_resource :vehicle_model do
    attribute :name, :string
    # attribute :vehicle_make, :references
  end
  strong_resource :vehicle_trim do
    # attribute :vehicle_make, :references
    # attribute :vehicle_model, :references
    attribute :make_id, :string
    attribute :make_display, :string
    attribute :name, :string
    attribute :trim, :string
    attribute :year, :string
    attribute :body, :string
    attribute :engine_position, :string
    attribute :engine_cc, :integer
    attribute :engine_cyl, :integer
    attribute :engine_type, :string
    attribute :engine_valves_per_cyl, :integer
    attribute :engine_power_ps, :string
    attribute :engine_power_rpm, :integer
    attribute :engine_torque_nm, :string
    attribute :engine_torque_rpm, :integer
    attribute :engine_bore_mm, :number
    attribute :engine_stroke_mm, :number
    attribute :engine_compression, :string
    attribute :engine_fuel, :string
    attribute :top_speed_kph, :integer
    attribute :zero_to_100_kph, :integer
    attribute :drive, :string
    attribute :drive2, :string
    attribute :seats, :integer
    attribute :seats2, :integer
    attribute :weight_kg, :integer
    attribute :length_mm, :number
    attribute :width_mm, :number
    attribute :height_mm, :number
    attribute :wheelbase_mm, :number
    attribute :lkm_hwy, :number
    attribute :lkm_mixed, :number
    attribute :lkm_city, :number
    attribute :fuel_cap_l, :integer
    attribute :sold_in_us, :boolean
    attribute :co2, :string
  end
  strong_resource :vehicle_make do
    attribute :name, :string
  end
end
