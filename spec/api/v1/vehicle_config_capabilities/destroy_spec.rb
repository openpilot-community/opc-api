require 'rails_helper'

RSpec.describe "vehicle_config_capabilities#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_capabilities/#{vehicle_config_capability.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_capability) { create(:vehicle_config_capability) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigCapability.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
