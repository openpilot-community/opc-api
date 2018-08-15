require 'rails_helper'

RSpec.describe "video_hardware_items#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/video_hardware_items/#{video_hardware_item.id}", payload
  end

  describe 'basic update' do
    let!(:video_hardware_item) { create(:video_hardware_item) }

    let(:payload) do
      {
        data: {
          id: video_hardware_item.id.to_s,
          type: 'video_hardware_items',
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
      }.to change { video_hardware_item.reload.attributes }
      assert_payload(:video_hardware_item, video_hardware_item, json_item)

      # ... assert updates attributes ...
    end
  end
end
