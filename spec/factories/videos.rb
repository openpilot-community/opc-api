# == Schema Information
#
# Table name: videos
#
#  id            :bigint(8)        not null, primary key
#  title         :string
#  video_url     :string
#  provider_name :string
#  author        :string
#  author_url    :string
#  thumbnail_url :string
#  description   :string
#  html          :string
#  uploaded_at   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryBot.define do
  factory :video do
    title "MyString"
    video_url "MyString"
    provider_name "MyString"
    author "MyString"
    author_url "MyString"
    thumbnail_url "MyString"
    description "MyString"
    makes "MyString"
    html "MyString"
    models "MyString"
    uploaded_at "MyString"
  end
end
