require 'rails_helper'

RSpec.describe "vehicle_options#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_options", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_options',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleOption.count }.by(1)
      vehicle_option = VehicleOption.last

      assert_payload(:vehicle_option, vehicle_option, json_item)
    end
  end
end
