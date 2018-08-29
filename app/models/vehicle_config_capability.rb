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
  # include VehicleConfigCapabilityAdmin
  belongs_to :vehicle_config
  belongs_to :vehicle_config_type
  belongs_to :vehicle_capability
  before_save :set_capability_usage
  amoeba do
    enable
  end

  def set_capability_usage
    usage_count = VehicleConfigCapabilities.where(vehicle_capability: vehicle_capability.id).count
    byebug
    VehicleCapability.find(vehicle_capability.id).update_attributes(vehicle_config_count: ).count)
  end

  def name
    if (vehicle_config && vehicle_capability)
      "#{vehicle_config.title} / #{vehicle_capability.name}"
    end
  end

  def mph
    if !kph.blank?
      (kph*0.621371).round
    end
  end
end
