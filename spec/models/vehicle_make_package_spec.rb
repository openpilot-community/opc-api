# == Schema Information
#
# Table name: vehicle_make_packages
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  vehicle_make_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe VehicleMakePackage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
