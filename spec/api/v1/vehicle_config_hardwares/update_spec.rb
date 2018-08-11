require 'rails_helper'

RSpec.describe "vehicle_config_hardwares#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_hardwares/#{vehicle_config_hardware.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_hardware) { create(:vehicle_config_hardware) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_hardware.id.to_s,
          type: 'vehicle_config_hardwares',
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
      }.to change { vehicle_config_hardware.reload.attributes }
      assert_payload(:vehicle_config_hardware, vehicle_config_hardware, json_item)

      # ... assert updates attributes ...
    end
  end
end
