# == Schema Information
#
# Table name: vehicle_models
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  vehicle_make_id :bigint(8)
#  tmp_make_name   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  slug            :string
#

require 'rails_helper'

RSpec.describe VehicleModel, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
