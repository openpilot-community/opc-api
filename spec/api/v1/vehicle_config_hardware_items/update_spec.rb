require 'rails_helper'

RSpec.describe "vehicle_config_hardware_items#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_hardware_items/#{vehicle_config_hardware_item.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_hardware_item) { create(:vehicle_config_hardware_item) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_hardware_item.id.to_s,
          type: 'vehicle_config_hardware_items',
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
      }.to change { vehicle_config_hardware_item.reload.attributes }
      assert_payload(:vehicle_config_hardware_item, vehicle_config_hardware_item, json_item)

      # ... assert updates attributes ...
    end
  end
end
