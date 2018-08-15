# == Schema Information
#
# Table name: vehicle_config_required_options
#
#  id                :bigint(8)        not null, primary key
#  vehicle_config_id :bigint(8)
#  vehicle_option_id :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryBot.define do
  factory :vehicle_config_required_option do
    vehicle_config nil
    vehicle_option nil
  end
end
