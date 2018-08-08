require 'rails_helper'

RSpec.describe "vehicle_option_availabilities#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_option_availabilities", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_option_availabilities',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleOptionAvailability.count }.by(1)
      vehicle_option_availability = VehicleOptionAvailability.last

      assert_payload(:vehicle_option_availability, vehicle_option_availability, json_item)
    end
  end
end
