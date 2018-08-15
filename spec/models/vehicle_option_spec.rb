# == Schema Information
#
# Table name: vehicle_options
#
#  id                :bigint(8)        not null, primary key
#  name              :string
#  description       :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  alternate_name    :string
#  what_it_does      :text
#  what_it_doesnt_do :text
#  reference_url     :string
#

require 'rails_helper'

RSpec.describe VehicleOption, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
