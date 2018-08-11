require 'rails_helper'

RSpec.describe "vehicle_model_options#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_model_options/#{vehicle_model_option.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_model_option) { create(:vehicle_model_option) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleModelOption.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
