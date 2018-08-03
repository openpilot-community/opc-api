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
  jsonapi_resource '/v1/vehicle_makes'
  jsonapi_resource '/v1/vehicle_trims'
  jsonapi_resource '/v1/vehicle_models'
  jsonapi_resource '/v1/vehicle_config_statuses'
  jsonapi_resource '/v1/vehicle_configs'
end
