# == Schema Information
#
# Table name: vehicle_config_capabilities
#
#  id                     :bigint(8)        not null, primary key
#  vehicle_config_id      :bigint(8)
#  vehicle_capability_id  :bigint(8)
#  kph                    :integer
#  timeout                :integer
#  confirmed              :boolean
#  confirmed_by           :integer
#  notes                  :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  vehicle_config_type_id :bigint(8)
#

class VehicleConfigCapability < ApplicationRecord
  include VehicleConfigCapabilityAdmin
  belongs_to :vehicle_config
  # belongs_to :vehicle_config_type
  belongs_to :vehicle_capability

  def name
    "#{vehicle_config.title} / #{vehicle_capability.name}"
  end

  def mph
    if !kph.blank?
      (kph*0.621371).round
    end
  end
end
