require 'rails_helper'

RSpec.describe "vehicle_capabilities#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_capabilities/#{vehicle_capability.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_capability) { create(:vehicle_capability) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleCapability.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
