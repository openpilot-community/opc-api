class VideoHardware < ApplicationRecord
  belongs_to :video
  belongs_to :hardware_item
end
