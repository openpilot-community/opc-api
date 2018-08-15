# == Schema Information
#
# Table name: hardware_types
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryBot.define do
  factory :hardware_type do
    name "MyString"
    description "MyText"
  end
end
