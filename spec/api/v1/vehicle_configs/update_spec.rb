require 'rails_helper'

RSpec.describe "vehicle_configs#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_configs/#{vehicle_config.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config) { create(:vehicle_config) }

    let(:payload) do
      {
        data: {
          id: vehicle_config.id.to_s,
          type: 'vehicle_configs',
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
      }.to change { vehicle_config.reload.attributes }
      assert_payload(:vehicle_config, vehicle_config, json_item)

      # ... assert updates attributes ...
    end
  end
end
