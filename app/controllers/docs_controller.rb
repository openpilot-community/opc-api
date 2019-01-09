require 'jsonapi_swagger_helpers'
class DocsController < ActionController::API
  # include ActionDispatch::Routing::UrlFor
  # include Rails.application.routes.url_helpers
  # include UrlFor
  include JsonapiSwaggerHelpers::DocsControllerMixin
  # base_url = Rails.env == 'production' ? 'https://openpilot-community.herokuapp.com' : 'http://localhost:3000'
  # puts base_url
  swagger_root do
    key :swagger, '2.0'
    info do
      key :version, '1.0.0'
      key :title, 'Openpilot Community'
      key :description, '--'
      contact do
        key :name, '--'
        key :email, '--'
      end
    end
    key :basePath, "/api"
    key :consumes, ['application/json']
    key :produces, ['application/json']
  end
  # jsonapi_resource '/v1/vehicle_makes'
  # jsonapi_resource '/v1/vehicle_trims'
  # jsonapi_resource '/v1/vehicle_models'
  # jsonapi_resource '/v1/vehicle_config_statuses'
  # jsonapi_resource '/v1/vehicle_configs'
  # jsonapi_resource '/v1/vehicle_option_availabilities'
  # jsonapi_resource '/v1/users'
  # jsonapi_resource '/v1/hardware_types'
  # jsonapi_resource '/v1/hardware_items'
  # jsonapi_resource '/v1/contributors'
  # jsonapi_resource '/v1/logins'
  # jsonapi_resource '/v1/modifications'
  # jsonapi_resource '/v1/pull_requests'
  # jsonapi_resource '/v1/repositories'
  # jsonapi_resource '/v1/vehicle_capabilities'
  # jsonapi_resource '/v1/vehicle_config_capabilities'
  # jsonapi_resource '/v1/vehicle_config_hardware_items'
  # jsonapi_resource '/v1/vehicle_config_pull_requests'
  # jsonapi_resource '/v1/vehicle_config_repositories'
  # jsonapi_resource '/v1/vehicle_config_required_options'
  # jsonapi_resource '/v1/vehicle_config_required_packages'
  # jsonapi_resource '/v1/vehicle_config_types'
  # jsonapi_resource '/v1/vehicle_config_videos'
  # jsonapi_resource '/v1/vehicle_make_packages'
  # jsonapi_resource '/v1/vehicle_model_options'
  # jsonapi_resource '/v1/vehicle_options'
  # jsonapi_resource '/v1/videos'
  # jsonapi_resource '/v1/video_hardware_items'
  # jsonapi_resource '/v1/vehicle_config_modifications'
  # jsonapi_resource '/v1/modification_hardware_types'
  # jsonapi_resource '/v1/modification_hardware_type_hardware_items'
  jsonapi_resource '/v1/user_discord_vehicles'
end
