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

require 'rails_helper'

RSpec.describe Modification, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
