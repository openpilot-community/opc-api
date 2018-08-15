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
  strong_resource :vehicle_config_modification do
  end
  strong_resource :video_hardware_item do
  end
  strong_resource :vehicle_config_hardware_item do
  end
  strong_resource :video do
    attribute :title, :string
    attribute :video_url, :string
    attribute :provider_name, :string
    attribute :author, :string
    attribute :author_url, :string
    attribute :thumbnail_url, :string
    attribute :description, :string
    attribute :html, :string
    attribute :uploaded_at, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  
  strong_resource :vehicle_trim do
    attribute :vehicle_make_id, :integer
    attribute :vehicle_model_id, :integer
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
    attribute :engine_bore_mm, :integer
    attribute :engine_stroke_mm, :integer
    attribute :engine_compression, :string
    attribute :engine_fuel, :string
    attribute :top_speed_kph, :integer
    attribute :zero_to_100_kph, :integer
    attribute :drive, :string
    attribute :drive2, :string
    attribute :seats, :integer
    attribute :seats2, :integer
    attribute :weight_kg, :integer
    attribute :length_mm, :integer
    attribute :width_mm, :integer
    attribute :height_mm, :integer
    attribute :wheelbase_mm, :integer
    attribute :lkm_hwy, :integer
    attribute :lkm_mixed, :integer
    attribute :lkm_city, :integer
    attribute :fuel_cap_l, :integer
    attribute :sold_in_us, :boolean
    attribute :co2, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :forward_collision_warning, :integer
    attribute :adaptive_cruise_control, :integer
    attribute :lane_departure_warning, :integer
    attribute :lane_keeping_assist, :integer
    attribute :blind_spot_warning, :integer
    attribute :rear_cross_traffic_alert, :integer
    attribute :back_up_camera, :integer
    attribute :adaptive_headlights, :integer
    attribute :antilock_braking_system, :integer
    attribute :automatic_emergency_braking, :integer
    attribute :automatic_parallel_parking, :integer
    attribute :backup_warning, :integer
    attribute :biycle_detection, :integer
    attribute :blind_spot_monitoring, :integer
    attribute :brake_assist, :integer
    attribute :curve_speed_warning, :integer
    attribute :drowsiness_alert, :integer
    attribute :electronic_stability_control, :integer
    attribute :high_speed_alert, :integer
    attribute :hill_descent_assist, :integer
    attribute :hill_start_assist, :integer
    attribute :left_turn_crash_avoidance, :integer
    attribute :pedestrian_detection, :integer
    attribute :push_button_start, :integer
    attribute :sideview_camera, :integer
    attribute :temperature_warning, :integer
    attribute :tire_pressure_monitoring_system, :integer
    attribute :traction_control, :integer
    attribute :obstacle_detection, :integer
  end
  strong_resource :vehicle_option do
    attribute :name, :string
    attribute :description, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :alternate_name, :string
    attribute :what_it_does, :string
    attribute :what_it_doesnt_do, :string
    attribute :reference_url, :string
  end
  strong_resource :vehicle_option_availability do
    attribute :name, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_model do
    attribute :name, :string
    attribute :vehicle_make_id, :integer
    attribute :tmp_make_name, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :slug, :string
  end
  strong_resource :vehicle_model_option do
    attribute :vehicle_year, :integer
    attribute :vehicle_make_id, :integer
    attribute :vehicle_model_id, :integer
    attribute :vehicle_option_id, :integer
    attribute :vehicle_option_availability_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_make do
    attribute :name, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :slack_channel, :string
    attribute :slug, :string
  end
  strong_resource :vehicle_make_package do
    attribute :name, :string
    attribute :vehicle_make_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_config do
    attribute :title, :string
    attribute :year, :integer
    attribute :vehicle_make_id, :integer
    attribute :vehicle_model_id, :integer
    attribute :vehicle_trim_id, :integer
    attribute :vehicle_config_status_id, :integer
    attribute :description, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :vehicle_make_package_id, :integer
    attribute :slug, :string
    attribute :parent_id, :integer
    attribute :vehicle_config_type_id, :integer
  end
  strong_resource :vehicle_config_video do
    attribute :vehicle_config_id, :integer
    attribute :video_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_config_type do
    attribute :name, :string
    attribute :description, :string
    attribute :difficulty_level, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_config_required_package do
    attribute :vehicle_config_id, :integer
    attribute :vehicle_make_package_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_config_required_option do
    attribute :vehicle_config_id, :integer
    attribute :vehicle_option_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_config_repository do
    attribute :vehicle_config_id, :integer
    attribute :repository_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_config_pull_request do
    attribute :vehicle_config_id, :integer
    attribute :pull_request_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_config_hardware do
    attribute :vehicle_config_id, :integer
    attribute :hardware_item_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :vehicle_config_capability do
    attribute :vehicle_config_id, :integer
    attribute :vehicle_capability_id, :integer
    attribute :kph, :integer
    attribute :timeout, :integer
    attribute :confirmed, :boolean
    attribute :confirmed_by, :integer
    attribute :notes, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :vehicle_config_type_id, :integer
  end
  strong_resource :vehicle_capability do
    attribute :name, :string
    attribute :description, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :user do
    attribute :username, :string
    attribute :email, :string
    attribute :slack_username, :string
    attribute :github_username, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :avatar_url, :string
  end
  strong_resource :repository do
    attribute :name, :string
    attribute :full_name, :string
    attribute :owner_login, :string
    attribute :owner_avatar_url, :string
    attribute :owner_url, :string
    attribute :url, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :pull_request do
    attribute :name, :string
    attribute :number, :string
    attribute :title, :string
    attribute :state, :string
    attribute :locked, :string
    attribute :user, :string
    attribute :body, :string
    attribute :pr_created_at, :string
    attribute :pr_updated_at, :string
    attribute :closed_at, :string
    attribute :merged_at, :string
    attribute :merge_commit_sha, :string
    attribute :head, :string
    attribute :author_association, :string
    attribute :html_url, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :modification do
    attribute :name, :string
    attribute :summary, :string
    attribute :description, :string
    attribute :instructions, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :login do
    attribute :identification, :string
    attribute :password_digest, :string
    attribute :oauth2_token, :string
    attribute :uid, :string
    attribute :single_use_oauth2_token, :string
    attribute :user_id, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
    attribute :provider, :string
  end
  strong_resource :hardware_type do
    attribute :name, :string
    attribute :description, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :hardware_item do
    attribute :name, :string
    attribute :alternate_name, :string
    attribute :description, :string
    attribute :hardware_type_id, :integer
    attribute :compatible_with_all_vehicles, :boolean
    attribute :available_for_purchase, :boolean
    attribute :purchase_url, :string
    attribute :requires_assembly, :boolean
    attribute :can_be_built, :boolean
    attribute :build_plans_url, :string
    attribute :notes, :string
    attribute :image_url, :string
    attribute :install_guide_url, :string
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :contributor do
    attribute :username, :string
    attribute :avatar_url, :string
    attribute :html_url, :string
    attribute :contributions, :integer
    attribute :created_at, :datetime
    attribute :updated_at, :datetime
  end
  strong_resource :hardware_item do
    attribute :name, :string
    attribute :alternate_name, :string
    attribute :description, :string
    attribute :compatible_with_all_vehicles, :boolean
    attribute :available_for_purchase, :boolean
    attribute :purchase_url, :string
    attribute :requires_assembly, :boolean
    attribute :can_be_built, :boolean
    attribute :build_plans_url, :string
    attribute :notes, :string
    attribute :image_url, :string
    attribute :install_guide_url, :string
    attribute :created_at, :string
    attribute :updated_at, :string
  end
  strong_resource :hardware_type do
    attribute :name, :string
    attribute :description, :string
    attribute :created_at, :string
    attribute :updated_at, :string
  end
  strong_resource :user do
    attribute :username, :string
    attribute :email, :string
    attribute :slack_username, :string
    attribute :github_username, :string
    attribute :avatar_url, :string
    attribute :created_at, :string
    attribute :updated_at, :string
  end
  strong_resource :vehicle_option_availability do
    attribute :name, :string
    attribute :created_at, :string
    attribute :updated_at, :string
  end
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
