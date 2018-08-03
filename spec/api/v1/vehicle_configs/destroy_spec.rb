require 'rails_helper'

RSpec.describe "vehicle_configs#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_configs/#{vehicle_config.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config) { create(:vehicle_config) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfig.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
