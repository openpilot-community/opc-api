class UserDiscordVehiclesController < ApplicationController
  def index
    user_discord_vehicles = UserDiscordVehicleResource.all(params)
    respond_with(user_discord_vehicles)
  end

  def show
    user_discord_vehicle = UserDiscordVehicleResource.find(params)
    respond_with(user_discord_vehicle)
  end

  def create
    user_discord_vehicle = UserDiscordVehicleResource.build(params)

    if user_discord_vehicle.save
      render jsonapi: user_discord_vehicle, status: 201
    else
      render jsonapi_errors: user_discord_vehicle
    end
  end

  def update
    user_discord_vehicle = UserDiscordVehicleResource.find(params)

    if user_discord_vehicle.update_attributes
      render jsonapi: user_discord_vehicle
    else
      render jsonapi_errors: user_discord_vehicle
    end
  end

  def destroy
    user_discord_vehicle = UserDiscordVehicleResource.find(params)

    if user_discord_vehicle.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: user_discord_vehicle
    end
  end
end
