require 'rails_helper'

RSpec.describe "vehicle_config_modifications#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_config_modifications", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_config_modifications',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigModification.count }.by(1)
      vehicle_config_modification = VehicleConfigModification.last

      assert_payload(:vehicle_config_modification, vehicle_config_modification, json_item)
    end
  end
end
