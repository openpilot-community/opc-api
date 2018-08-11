require 'rails_helper'

RSpec.describe "vehicle_config_required_options#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_config_required_options", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_config_required_options',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigRequiredOption.count }.by(1)
      vehicle_config_required_option = VehicleConfigRequiredOption.last

      assert_payload(:vehicle_config_required_option, vehicle_config_required_option, json_item)
    end
  end
end
