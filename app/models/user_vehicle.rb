class UserVehicle < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle_config
  belongs_to :vehicle_trim
  belongs_to :vehicle_trim_style
end
