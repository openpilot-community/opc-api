require 'rails_helper'

RSpec.describe "vehicle_option_availabilities#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_option_availabilities/#{vehicle_option_availability.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_option_availability) { create(:vehicle_option_availability) }

    let(:payload) do
      {
        data: {
          id: vehicle_option_availability.id.to_s,
          type: 'vehicle_option_availabilities',
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
      }.to change { vehicle_option_availability.reload.attributes }
      assert_payload(:vehicle_option_availability, vehicle_option_availability, json_item)

      # ... assert updates attributes ...
    end
  end
end
