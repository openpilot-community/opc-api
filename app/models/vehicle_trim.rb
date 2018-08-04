class VehicleTrim < ApplicationRecord
  has_paper_trail
  belongs_to :vehicle_make
  belongs_to :vehicle_model
end
