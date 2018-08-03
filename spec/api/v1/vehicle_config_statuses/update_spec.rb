require 'rails_helper'

RSpec.describe "vehicle_config_statuses#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_statuses/#{vehicle_config_status.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_status) { create(:vehicle_config_status) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_status.id.to_s,
          type: 'vehicle_config_statuses',
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
      }.to change { vehicle_config_status.reload.attributes }
      assert_payload(:vehicle_config_status, vehicle_config_status, json_item)

      # ... assert updates attributes ...
    end
  end
end
