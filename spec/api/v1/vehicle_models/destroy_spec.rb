require 'rails_helper'

RSpec.describe "vehicle_models#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_models/#{vehicle_model.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_model) { create(:vehicle_model) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleModel.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
