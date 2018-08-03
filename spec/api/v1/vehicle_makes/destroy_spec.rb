require 'rails_helper'

RSpec.describe "vehicle_makes#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_makes/#{vehicle_make.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_make) { create(:vehicle_make) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleMake.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
