require 'rails_helper'

RSpec.describe "vehicle_config_pull_requests#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/vehicle_config_pull_requests/#{vehicle_config_pull_request.id}"
  end

  describe 'basic destroy' do
    let!(:vehicle_config_pull_request) { create(:vehicle_config_pull_request) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigPullRequest.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
