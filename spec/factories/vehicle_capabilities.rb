# == Schema Information
#
# Table name: vehicle_capabilities
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :vehicle_capability do
    name "MyString"
    description "MyText"
  end
end
