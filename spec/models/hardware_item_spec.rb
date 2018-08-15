# == Schema Information
#
# Table name: hardware_items
#
#  id                           :bigint(8)        not null, primary key
#  name                         :string
#  alternate_name               :string
#  description                  :text
#  hardware_type_id             :bigint(8)
#  compatible_with_all_vehicles :boolean
#  available_for_purchase       :boolean
#  purchase_url                 :string
#  requires_assembly            :boolean
#  can_be_built                 :boolean
#  build_plans_url              :string
#  notes                        :text
#  image_url                    :string
#  install_guide_url            :string
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

require 'rails_helper'

RSpec.describe HardwareItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
