require 'rails_helper'

RSpec.describe "vehicle_config_types#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_types/#{vehicle_config_type.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_type) { create(:vehicle_config_type) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigType.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
