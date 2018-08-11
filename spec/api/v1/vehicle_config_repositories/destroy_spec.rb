require 'rails_helper'

RSpec.describe "vehicle_config_repositories#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_repositories/#{vehicle_config_repository.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_repository) { create(:vehicle_config_repository) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigRepository.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
