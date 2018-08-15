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

require 'rails_helper'

RSpec.describe VehicleConfigVideo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
