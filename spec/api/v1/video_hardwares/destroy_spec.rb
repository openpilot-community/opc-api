require 'rails_helper'

RSpec.describe "video_hardwares#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/video_hardwares/#{video_hardware.id}"
  end

  describe 'basic destroy' do
    let!(:video_hardware) { create(:video_hardware) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VideoHardware.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
