# == Schema Information
#
# Table name: vehicle_config_repositories
#
#  id                :bigint(8)        not null, primary key
#  vehicle_config_id :bigint(8)
#  repository_id     :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryBot.define do
  factory :vehicle_config_repository do
    vehicle_config nil
    repository nil
  end
end
