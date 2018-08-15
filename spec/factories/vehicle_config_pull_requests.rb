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

FactoryBot.define do
  factory :vehicle_config_pull_request do
    vehicle_config nil
    pull_request nil
  end
end
