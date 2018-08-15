# == Schema Information
#
# Table name: video_hardwares
#
#  id               :bigint(8)        not null, primary key
#  video_id         :bigint(8)
#  hardware_item_id :bigint(8)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryBot.define do
  factory :video_hardware do
    video nil
    hardware_item nil
  end
end
