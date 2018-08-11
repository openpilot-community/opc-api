require 'rails_helper'

RSpec.describe "vehicle_model_options#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_model_options", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_model_options',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleModelOption.count }.by(1)
      vehicle_model_option = VehicleModelOption.last

      assert_payload(:vehicle_model_option, vehicle_model_option, json_item)
    end
  end
end
