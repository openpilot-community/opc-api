require 'rails_helper'

RSpec.describe "video_hardware_items#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/video_hardware_items", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'video_hardware_items',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VideoHardwareItem.count }.by(1)
      video_hardware_item = VideoHardwareItem.last

      assert_payload(:video_hardware_item, video_hardware_item, json_item)
    end
  end
end
