require 'rails_helper'

RSpec.describe "vehicle_config_hardwares#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_hardwares/#{vehicle_config_hardware.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_hardware) { create(:vehicle_config_hardware) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigHardware.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
