class VehicleConfig < ApplicationRecord
  belongs_to :vehicle_make
  belongs_to :vehicle_model
  belongs_to :vehicle_trim
end
