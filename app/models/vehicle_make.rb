class VehicleMake < ApplicationRecord
  has_paper_trail
  has_many :vehicle_model
end
