require 'rails_helper'

RSpec.describe "vehicle_options#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_options/#{vehicle_option.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_option) { create(:vehicle_option) }

    let(:payload) do
      {
        data: {
          id: vehicle_option.id.to_s,
          type: 'vehicle_options',
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
      }.to change { vehicle_option.reload.attributes }
      assert_payload(:vehicle_option, vehicle_option, json_item)

      # ... assert updates attributes ...
    end
  end
end
