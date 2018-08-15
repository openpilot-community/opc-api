# == Schema Information
#
# Table name: videos
#
#  id            :bigint(8)        not null, primary key
#  title         :string
#  video_url     :string
#  provider_name :string
#  author        :string
#  author_url    :string
#  thumbnail_url :string
#  description   :string
#  html          :string
#  uploaded_at   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Video, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
