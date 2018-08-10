class VehicleConfigCapability < ApplicationRecord
  include VehicleConfigCapabilityAdmin
  belongs_to :vehicle_config
  # belongs_to :vehicle_config_type
  belongs_to :vehicle_capability

  def name
    "#{vehicle_config.title} / #{vehicle_capability.name}"
  end
end
