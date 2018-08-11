require 'rails_helper'

RSpec.describe "vehicle_config_videos#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_config_videos", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_config_videos',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigVideo.count }.by(1)
      vehicle_config_video = VehicleConfigVideo.last

      assert_payload(:vehicle_config_video, vehicle_config_video, json_item)
    end
  end
end
