class VehicleCapability < ApplicationRecord
  has_many :vehicle_config_capabilities
  has_many :vehicle_config, :through => :vehicle_config_capabilities
end
