# == Schema Information
#
# Table name: vehicle_config_types
#
#  id               :bigint(8)        not null, primary key
#  name             :string
#  description      :text
#  difficulty_level :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryBot.define do
  factory :vehicle_config_type do
    name "MyString"
    description "MyText"
    difficulty_level 1
  end
end
