# == Schema Information
#
# Table name: vehicle_config_types
#
#  id               :bigint(8)        not null, primary key
#  name             :string
#  description      :text
#  difficulty_level :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe VehicleConfigType, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
