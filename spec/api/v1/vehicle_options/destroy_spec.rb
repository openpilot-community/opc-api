require 'rails_helper'

RSpec.describe "vehicle_options#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_options/#{vehicle_option.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_option) { create(:vehicle_option) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleOption.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
