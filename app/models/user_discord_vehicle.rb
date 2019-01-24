class UserDiscordVehicle < ApplicationRecord
  belongs_to :vehicle_config, optional: true
end
