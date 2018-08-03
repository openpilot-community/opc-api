require 'rails_helper'

RSpec.describe "vehicle_trims#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_trims/#{vehicle_trim.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_trim) { create(:vehicle_trim) }

    let(:payload) do
      {
        data: {
          id: vehicle_trim.id.to_s,
          type: 'vehicle_trims',
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
      }.to change { vehicle_trim.reload.attributes }
      assert_payload(:vehicle_trim, vehicle_trim, json_item)

      # ... assert updates attributes ...
    end
  end
end
