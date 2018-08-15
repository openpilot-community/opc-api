# == Schema Information
#
# Table name: vehicle_option_availabilities
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :vehicle_option_availability do
    name "MyString"
  end
end
