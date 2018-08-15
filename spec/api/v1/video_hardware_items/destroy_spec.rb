require 'rails_helper'

RSpec.describe "video_hardware_items#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/video_hardware_items/#{video_hardware_item.id}"
  end

  describe 'basic destroy' do
    let!(:video_hardware_item) { create(:video_hardware_item) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VideoHardwareItem.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
