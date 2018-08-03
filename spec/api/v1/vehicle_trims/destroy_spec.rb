require 'rails_helper'

RSpec.describe "vehicle_trims#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_trims/#{vehicle_trim.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_trim) { create(:vehicle_trim) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleTrim.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
