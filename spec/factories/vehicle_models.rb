# == Schema Information
#
# Table name: vehicle_models
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  vehicle_make_id :bigint(8)
#  tmp_make_name   :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  slug            :string
#

FactoryBot.define do
  factory :vehicle_model do
    name "MyString"
    make nil
  end
end
