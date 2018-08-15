# == Schema Information
#
# Table name: pull_requests
#
#  id                 :bigint(8)        not null, primary key
#  name               :string
#  number             :string
#  title              :string
#  state              :string
#  locked             :string
#  user               :string
#  body               :string
#  pr_created_at      :string
#  pr_updated_at      :string
#  closed_at          :string
#  merged_at          :string
#  merge_commit_sha   :string
#  head               :string
#  author_association :string
#  html_url           :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryBot.define do
  factory :pull_request do
    name "MyString"
    pr_number 1
    title "MyString"
    body "MyText"
    created_by "MyString"
    created_by_avatar "MyString"
    other_user "MyString"
    other_user_avatar "MyString"
    repository_name "MyString"
    repository "MyString"
    repo_url "MyString"
    pull_request_url "MyString"
  end
end
