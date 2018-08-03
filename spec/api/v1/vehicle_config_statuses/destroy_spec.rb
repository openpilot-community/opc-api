require 'rails_helper'

RSpec.describe "vehicle_config_statuses#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_statuses/#{vehicle_config_status.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_status) { create(:vehicle_config_status) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigStatus.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
