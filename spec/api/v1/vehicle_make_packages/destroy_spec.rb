require 'rails_helper'

RSpec.describe "vehicle_make_packages#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_make_packages/#{vehicle_make_package.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_make_package) { create(:vehicle_make_package) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleMakePackage.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
