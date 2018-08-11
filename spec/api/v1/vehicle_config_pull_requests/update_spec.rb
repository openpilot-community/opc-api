require 'rails_helper'

RSpec.describe "vehicle_config_pull_requests#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_pull_requests/#{vehicle_config_pull_request.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_pull_request) { create(:vehicle_config_pull_request) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_pull_request.id.to_s,
          type: 'vehicle_config_pull_requests',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect {
        make_request
      }.to change { vehicle_config_pull_request.reload.attributes }
      assert_payload(:vehicle_config_pull_request, vehicle_config_pull_request, json_item)

      # ... assert updates attributes ...
    end
  end
end
