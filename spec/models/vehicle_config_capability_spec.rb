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

require 'rails_helper'

RSpec.describe VehicleConfigCapability, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
