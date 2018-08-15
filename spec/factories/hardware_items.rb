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

FactoryBot.define do
  factory :hardware_item do
    name "MyString"
    alternate_name "MyString"
    description "MyText"
    hardware_type nil
    compatible_with_all_vehicles false
    available_for_purchase false
    purchase_url "MyString"
    requires_assembly false
    can_be_built false
    build_plans_url "MyString"
    notes "MyText"
    image_url "MyString"
    install_guide_url "MyString"
  end
end
