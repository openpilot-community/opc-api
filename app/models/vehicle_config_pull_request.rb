class VehicleConfigPullRequest < ApplicationRecord
  belongs_to :vehicle_config
  belongs_to :pull_request
end
