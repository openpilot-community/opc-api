class VehicleConfigRepository < ApplicationRecord
  belongs_to :vehicle_config
  belongs_to :repository
end
