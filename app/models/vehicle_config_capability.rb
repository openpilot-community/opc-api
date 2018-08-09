class VehicleConfigCapability < ApplicationRecord
  belongs_to :vehicle_config
  belongs_to :vehicle_capability
end
