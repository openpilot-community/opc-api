# == Schema Information
#
# Table name: vehicle_configs
#
#  id                       :bigint(8)        not null, primary key
#  title                    :string
#  year                     :integer
#  vehicle_make_id          :bigint(8)
#  vehicle_model_id         :bigint(8)
#  vehicle_trim_id          :bigint(8)
#  vehicle_config_status_id :bigint(8)
#  description              :text
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  vehicle_make_package_id  :bigint(8)
#  slug                     :string
#  parent_id                :integer
#  vehicle_config_type_id   :bigint(8)
#

FactoryBot.define do
  factory :vehicle_config do
    title "MyString"
    year 1
    vehicle_make nil
    vehicle_model nil
    vehicle_trim nil
    description "MyText"
  end
end
