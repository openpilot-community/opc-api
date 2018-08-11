require 'rails_helper'

RSpec.describe "vehicle_config_hardwares#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_config_hardwares", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_config_hardwares',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigHardware.count }.by(1)
      vehicle_config_hardware = VehicleConfigHardware.last

      assert_payload(:vehicle_config_hardware, vehicle_config_hardware, json_item)
    end
  end
end
