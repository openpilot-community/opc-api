# == Schema Information
#
# Table name: repositories
#
#  id               :bigint(8)        not null, primary key
#  name             :string
#  full_name        :string
#  owner_login      :string
#  owner_avatar_url :string
#  owner_url        :string
#  url              :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryBot.define do
  factory :repository do
    name "MyString"
    full_name "MyString"
    owner_login "MyString"
    owner_avatar_url "MyString"
    owner_url "MyString"
    url "MyString"
  end
end
