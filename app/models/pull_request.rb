class PullRequest < ApplicationRecord
  has_many :vehicle_config_pull_requests
  has_many :vehicle_configs, :through => :vehicle_config_pull_requests
end
