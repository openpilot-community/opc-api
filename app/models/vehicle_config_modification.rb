class VehicleConfigModification < ApplicationRecord
  belongs_to :vehicle_config
  belongs_to :modification
  
  def name
    "#{vehicle_config.name} / #{modification.name}"
  end
end
