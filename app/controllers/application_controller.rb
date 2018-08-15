class String
  def is_i?
    !!(self =~ /\A[-+]?[0-9]+\z/)
  end
end
class ApplicationController < ActionController::API
  
  # include RailsApiAuth::Authentication
  # Bootstrap jsonapi_suite with relevant modules
  include JsonapiSuite::ControllerMixin
  # before_action :authenticate!, only: [:create, :update, :destroy]
  register_exception JsonapiCompliable::Errors::RecordNotFound,
    status: 404

  # Catch all exceptions and render a JSONAPI-compliable error payload
  # For additional documentation, see https://jsonapi-suite.github.io/jsonapi_errorable
  rescue_from Exception do |e|
    handle_exception(e)
  end

end
