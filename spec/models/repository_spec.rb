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

require 'rails_helper'

RSpec.describe Repository, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
