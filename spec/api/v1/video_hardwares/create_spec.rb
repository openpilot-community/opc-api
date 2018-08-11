require 'rails_helper'

RSpec.describe "video_hardwares#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/video_hardwares", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'video_hardwares',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VideoHardware.count }.by(1)
      video_hardware = VideoHardware.last

      assert_payload(:video_hardware, video_hardware, json_item)
    end
  end
end
