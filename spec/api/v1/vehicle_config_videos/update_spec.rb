require 'rails_helper'

RSpec.describe "vehicle_config_videos#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_videos/#{vehicle_config_video.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_video) { create(:vehicle_config_video) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_video.id.to_s,
          type: 'vehicle_config_videos',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect {
        make_request
      }.to change { vehicle_config_video.reload.attributes }
      assert_payload(:vehicle_config_video, vehicle_config_video, json_item)

      # ... assert updates attributes ...
    end
  end
end
