class VehicleLookup < ApplicationRecord
  belongs_to :vehicle_make
  belongs_to :vehicle_model
  belongs_to :vehicle_config
  belongs_to :user
end
