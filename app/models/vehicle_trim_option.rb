class VehicleModelOption < ApplicationRecord
  belongs_to :vehicle_trim
  belongs_to :vehicle_option
  belongs_to :vehicle_option_availability
end
