require 'rails_helper'

RSpec.describe "vehicle_config_videos#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_videos/#{vehicle_config_video.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_video) { create(:vehicle_config_video) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigVideo.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
