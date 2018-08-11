require 'rails_helper'

RSpec.describe "video_hardwares#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/video_hardwares/#{video_hardware.id}", payload
  end

  describe 'basic update' do
    let!(:video_hardware) { create(:video_hardware) }

    let(:payload) do
      {
        data: {
          id: video_hardware.id.to_s,
          type: 'video_hardwares',
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
      }.to change { video_hardware.reload.attributes }
      assert_payload(:video_hardware, video_hardware, json_item)

      # ... assert updates attributes ...
    end
  end
end
