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

FactoryBot.define do
  factory :vehicle_config_required_package do
    vehicle_config nil
    vehicle_make_package nil
  end
end
