class VehicleConfigHardware < ApplicationRecord
  belongs_to :vehicle_config
  belongs_to :hardware_item

  def name
    hardware_item.name
  end
end
