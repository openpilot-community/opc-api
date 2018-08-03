require 'rails_helper'

RSpec.describe "vehicle_models#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_models", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_models',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleModel.count }.by(1)
      vehicle_model = VehicleModel.last

      assert_payload(:vehicle_model, vehicle_model, json_item)
    end
  end
end
