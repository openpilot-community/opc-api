require 'rails_helper'

RSpec.describe "vehicle_config_required_options#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_required_options/#{vehicle_config_required_option.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_required_option) { create(:vehicle_config_required_option) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigRequiredOption.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
