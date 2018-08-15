# == Schema Information
#
# Table name: modifications
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  summary      :string
#  description  :text
#  instructions :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :modification do
    name "MyString"
    summary "MyString"
    description "MyText"
    instructions "MyText"
  end
end
