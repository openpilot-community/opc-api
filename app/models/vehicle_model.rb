class VehicleModel < ApplicationRecord
  has_paper_trail
  belongs_to :vehicle_make
end
