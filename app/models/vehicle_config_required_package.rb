class VehicleConfigRequiredPackage < ApplicationRecord
  belongs_to :vehicle_config
  belongs_to :vehicle_make_package
end
