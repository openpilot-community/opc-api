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

require 'rails_helper'

RSpec.describe PullRequest, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
