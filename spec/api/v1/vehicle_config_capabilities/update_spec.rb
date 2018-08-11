require 'rails_helper'

RSpec.describe "vehicle_config_capabilities#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_capabilities/#{vehicle_config_capability.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_capability) { create(:vehicle_config_capability) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_capability.id.to_s,
          type: 'vehicle_config_capabilities',
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
      }.to change { vehicle_config_capability.reload.attributes }
      assert_payload(:vehicle_config_capability, vehicle_config_capability, json_item)

      # ... assert updates attributes ...
    end
  end
end
