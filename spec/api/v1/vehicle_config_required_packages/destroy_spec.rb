require 'rails_helper'

RSpec.describe "vehicle_config_required_packages#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_required_packages/#{vehicle_config_required_package.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_required_package) { create(:vehicle_config_required_package) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigRequiredPackage.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
