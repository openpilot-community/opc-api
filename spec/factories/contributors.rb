# == Schema Information
#
# Table name: contributors
#
#  id            :bigint(8)        not null, primary key
#  username      :string
#  avatar_url    :string
#  html_url      :string
#  contributions :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :contributor do
    username "MyString"
    avatar_url "MyString"
    html_url "MyString"
    contributions "MyString"
  end
end
