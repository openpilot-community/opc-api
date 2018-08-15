# == Schema Information
#
# Table name: vehicle_config_videos
#
#  id                :bigint(8)        not null, primary key
#  vehicle_config_id :bigint(8)
#  video_id          :bigint(8)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryBot.define do
  factory :vehicle_config_video do
    vehicle_config nil
    video nil
  end
end
