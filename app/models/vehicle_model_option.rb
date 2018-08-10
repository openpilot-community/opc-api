class VehicleModelOption < ApplicationRecord
  belongs_to :vehicle_make
  belongs_to :vehicle_model
  belongs_to :vehicle_option
  belongs_to :vehicle_option_availability

  def name
    "#{vehicle_option.name}: #{vehicle_option_availability.name}"
  end
end
