class VehicleConfigHardware < ApplicationRecord
  belongs_to :vehicle_config
  belongs_to :hardware_item
end
