require 'rails_helper'

RSpec.describe "vehicle_make_packages#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_make_packages", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_make_packages',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleMakePackage.count }.by(1)
      vehicle_make_package = VehicleMakePackage.last

      assert_payload(:vehicle_make_package, vehicle_make_package, json_item)
    end
  end
end
