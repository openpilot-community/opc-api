# == Schema Information
#
# Table name: vehicle_config_pull_requests
#
#  id                :bigint(8)        not null, primary key
#  vehicle_config_id :bigint(8)
#  pull_request_id   :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'rails_helper'

RSpec.describe VehicleConfigPullRequest, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
