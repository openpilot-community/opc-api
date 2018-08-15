# == Schema Information
#
# Table name: vehicle_make_packages
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  vehicle_make_id :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :vehicle_make_package do
    name "MyString"
  end
end
