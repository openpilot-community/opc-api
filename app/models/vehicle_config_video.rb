class VehicleConfigVideo < ApplicationRecord
  belongs_to :vehicle_config
  belongs_to :video

  def name
    video.title
  end
end
