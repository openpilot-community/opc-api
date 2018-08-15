# == Schema Information
#
# Table name: vehicle_makes
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  slack_channel :string
#  slug          :string
#

FactoryBot.define do
  factory :vehicle_make do
    name "MyString"
  end
end
