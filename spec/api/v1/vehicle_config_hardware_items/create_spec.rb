require 'rails_helper'

RSpec.describe "vehicle_config_hardware_items#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_config_hardware_items", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_config_hardware_items',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigHardwareItem.count }.by(1)
      vehicle_config_hardware_item = VehicleConfigHardwareItem.last

      assert_payload(:vehicle_config_hardware_item, vehicle_config_hardware_item, json_item)
    end
  end
end
