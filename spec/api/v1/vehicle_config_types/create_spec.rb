require 'rails_helper'

RSpec.describe "vehicle_config_types#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_config_types", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_config_types',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigType.count }.by(1)
      vehicle_config_type = VehicleConfigType.last

      assert_payload(:vehicle_config_type, vehicle_config_type, json_item)
    end
  end
end
