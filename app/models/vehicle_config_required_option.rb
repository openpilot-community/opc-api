class VehicleConfigRequiredOption < ApplicationRecord
  belongs_to :vehicle_config
  belongs_to :vehicle_option
end
