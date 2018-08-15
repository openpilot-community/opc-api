require 'rails_helper'

RSpec.describe "vehicle_config_modifications#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_modifications/#{vehicle_config_modification.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_modification) { create(:vehicle_config_modification) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigModification.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
