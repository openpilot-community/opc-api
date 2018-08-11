class VehicleMakesController < ApplicationController
  # Mark this as a JSONAPI controller, associating with the given resource
  jsonapi resource: VehicleMakeResource

  # Reference a strong resource payload defined in
  # config/initializers/strong_resources.rb
  strong_resource :vehicle_make
  # Run strong parameter validation for these actions.
  # Invalid keys will be dropped.
  # Invalid value types will log or raise based on the configuration
  # ActionController::Parameters.action_on_invalid_parameters
  before_action :apply_strong_params, only: [:create, :update]

  # Start with a base scope and pass to render_jsonapi
  def index
    vehicle_makes = VehicleMake.all
    render_jsonapi(vehicle_makes)
  end

  # Call jsonapi_scope directly here so we can get behavior like
  # sparse fieldsets and statistics.
  def show
    scope = VehicleMake.find(params[:id])
    # instance = scope.resolve
    raise JsonapiCompliable::Errors::RecordNotFound unless scope
    render_jsonapi(scope, scope: false)
  end

  # jsonapi_create will use the configured Resource (and adapter) to persist.
  # This will handle nested relationships as well.
  # On validation errors, render correct error JSON.
  def create
    vehicle_make, success = jsonapi_create.to_a

    if success
      render_jsonapi(vehicle_make, scope: false)
    else
      render_errors_for(vehicle_make)
    end
  end

  # jsonapi_update will use the configured Resource (and adapter) to persist.
  # This will handle nested relationships as well.
  # On validation errors, render correct error JSON.
  def update
    vehicle_make, success = jsonapi_update.to_a

    if success
      render_jsonapi(vehicle_make, scope: false)
    else
      render_errors_for(vehicle_make)
    end
  end

  # Renders 200 OK with empty meta
  # http://jsonapi.org/format/#crud-deleting-responses-200
  def destroy
    vehicle_make, success = jsonapi_destroy.to_a

    if success
      render json: { meta: {} }
    else
      render_errors_for(vehicle_make)
    end
  end
end
