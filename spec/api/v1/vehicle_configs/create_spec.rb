require 'rails_helper'

RSpec.describe "vehicle_configs#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_configs", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_configs',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfig.count }.by(1)
      vehicle_config = VehicleConfig.last

      assert_payload(:vehicle_config, vehicle_config, json_item)
    end
  end
end
