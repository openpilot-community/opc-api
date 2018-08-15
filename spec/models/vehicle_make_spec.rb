# == Schema Information
#
# Table name: vehicle_makes
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slack_channel :string
#  slug          :string
#

require 'rails_helper'

RSpec.describe VehicleMake, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
