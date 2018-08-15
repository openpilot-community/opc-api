# == Schema Information
#
# Table name: vehicle_capabilities
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class VehicleCapability < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many :vehicle_config_capabilities
  has_many :vehicle_config, :through => :vehicle_config_capabilities
end
