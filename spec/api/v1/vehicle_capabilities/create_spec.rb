require 'rails_helper'

RSpec.describe "vehicle_capabilities#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_capabilities", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_capabilities',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleCapability.count }.by(1)
      vehicle_capability = VehicleCapability.last

      assert_payload(:vehicle_capability, vehicle_capability, json_item)
    end
  end
end
