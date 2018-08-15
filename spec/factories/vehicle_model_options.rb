# == Schema Information
#
# Table name: vehicle_model_options
#
#  id                             :bigint(8)        not null, primary key
#  vehicle_year                   :integer
#  vehicle_make_id                :bigint(8)
#  vehicle_model_id               :bigint(8)
#  vehicle_option_id              :bigint(8)
#  vehicle_option_availability_id :bigint(8)
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#

FactoryBot.define do
  factory :vehicle_model_option do
    vehicle_model nil
    vehicle_option nil
    vehicle_option_availability nil
  end
end
