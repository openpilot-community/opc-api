class VehicleModelsController < ApplicationController
  # Mark this as a JSONAPI controller, associating with the given resource
  jsonapi resource: VehicleModelResource

  # Reference a strong resource payload defined in
  # config/initializers/strong_resources.rb
  strong_resource :vehicle_model
  # Run strong parameter validation for these actions.
  # Invalid keys will be dropped.
  # Invalid value types will log or raise based on the configuration
  # ActionController::Parameters.action_on_invalid_parameters
  before_action :apply_strong_params, only: [:create, :update]

  # Start with a base scope and pass to render_jsonapi
  def index
    vehicle_models = VehicleModel.all
    render_jsonapi(vehicle_models)
  end

  # Call jsonapi_scope directly here so we can get behavior like
  # sparse fieldsets and statistics.
  def show
    scope = jsonapi_scope(VehicleModel.where(id: params[:id]))
    instance = scope.resolve.first
    raise JsonapiCompliable::Errors::RecordNotFound unless instance
    render_jsonapi(instance, scope: false)
  end

  # jsonapi_create will use the configured Resource (and adapter) to persist.
  # This will handle nested relationships as well.
  # On validation errors, render correct error JSON.
  def create
    vehicle_model, success = jsonapi_create.to_a

    if success
      render_jsonapi(vehicle_model, scope: false)
    else
      render_errors_for(vehicle_model)
    end
  end

  # jsonapi_update will use the configured Resource (and adapter) to persist.
  # This will handle nested relationships as well.
  # On validation errors, render correct error JSON.
  def update
    vehicle_model, success = jsonapi_update.to_a

    if success
      render_jsonapi(vehicle_model, scope: false)
    else
      render_errors_for(vehicle_model)
    end
  end

  # Renders 200 OK with empty meta
  # http://jsonapi.org/format/#crud-deleting-responses-200
  def destroy
    vehicle_model, success = jsonapi_destroy.to_a

    if success
      render json: { meta: {} }
    else
      render_errors_for(vehicle_model)
    end
  end
end
