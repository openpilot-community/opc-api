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

require 'rails_helper'

RSpec.describe VehicleCapability, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
