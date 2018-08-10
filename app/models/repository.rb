class Repository < ApplicationRecord
  has_many :vehicle_config_repositories
  has_many :vehicle_configs, :through => :vehicle_config_repositories
end
