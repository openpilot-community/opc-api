require 'rails_helper'

RSpec.describe "vehicle_makes#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_makes", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_makes',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleMake.count }.by(1)
      vehicle_make = VehicleMake.last

      assert_payload(:vehicle_make, vehicle_make, json_item)
    end
  end
end
