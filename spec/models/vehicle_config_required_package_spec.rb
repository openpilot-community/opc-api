# == Schema Information
#
# Table name: vehicle_config_required_packages
#
#  id                      :bigint(8)        not null, primary key
#  vehicle_config_id       :bigint(8)
#  vehicle_make_package_id :bigint(8)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

require 'rails_helper'

RSpec.describe VehicleConfigRequiredPackage, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
