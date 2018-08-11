require 'rails_helper'

RSpec.describe "vehicle_make_packages#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_make_packages/#{vehicle_make_package.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_make_package) { create(:vehicle_make_package) }

    let(:payload) do
      {
        data: {
          id: vehicle_make_package.id.to_s,
          type: 'vehicle_make_packages',
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
      }.to change { vehicle_make_package.reload.attributes }
      assert_payload(:vehicle_make_package, vehicle_make_package, json_item)

      # ... assert updates attributes ...
    end
  end
end
