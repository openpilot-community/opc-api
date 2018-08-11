require 'rails_helper'

RSpec.describe "vehicle_config_pull_requests#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_config_pull_requests", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_config_pull_requests',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigPullRequest.count }.by(1)
      vehicle_config_pull_request = VehicleConfigPullRequest.last

      assert_payload(:vehicle_config_pull_request, vehicle_config_pull_request, json_item)
    end
  end
end
