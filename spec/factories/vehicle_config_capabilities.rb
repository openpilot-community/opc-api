# == Schema Information
#
# Table name: vehicle_config_capabilities
#
#  id                     :bigint(8)        not null, primary key
#  vehicle_config_id      :bigint(8)
#  vehicle_capability_id  :bigint(8)
#  kph                    :integer
#  timeout                :integer
#  confirmed              :boolean
#  confirmed_by           :integer
#  notes                  :text
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  vehicle_config_type_id :bigint(8)
#

FactoryBot.define do
  factory :vehicle_config_capability do
    vehicle_config nil
    vehicle_capability nil
    kph 1
    timeout 1
    confirmed false
    confirmed_by 1
    notes "MyText"
  end
end
