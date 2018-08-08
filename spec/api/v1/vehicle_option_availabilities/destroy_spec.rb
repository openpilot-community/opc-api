require 'rails_helper'

RSpec.describe "vehicle_option_availabilities#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_option_availabilities/#{vehicle_option_availability.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_option_availability) { create(:vehicle_option_availability) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleOptionAvailability.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
