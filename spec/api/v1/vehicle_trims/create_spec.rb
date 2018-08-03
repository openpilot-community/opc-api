require 'rails_helper'

RSpec.describe "vehicle_trims#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_trims", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_trims',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleTrim.count }.by(1)
      vehicle_trim = VehicleTrim.last

      assert_payload(:vehicle_trim, vehicle_trim, json_item)
    end
  end
end
