require 'rails_helper'

RSpec.describe "vehicle_makes#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_makes/#{vehicle_make.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_make) { create(:vehicle_make) }

    let(:payload) do
      {
        data: {
          id: vehicle_make.id.to_s,
          type: 'vehicle_makes',
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
      }.to change { vehicle_make.reload.attributes }
      assert_payload(:vehicle_make, vehicle_make, json_item)

      # ... assert updates attributes ...
    end
  end
end
