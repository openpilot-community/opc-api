require 'rails_helper'

RSpec.describe "vehicle_capabilities#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_capabilities/#{vehicle_capability.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_capability) { create(:vehicle_capability) }

    let(:payload) do
      {
        data: {
          id: vehicle_capability.id.to_s,
          type: 'vehicle_capabilities',
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
      }.to change { vehicle_capability.reload.attributes }
      assert_payload(:vehicle_capability, vehicle_capability, json_item)

      # ... assert updates attributes ...
    end
  end
end
