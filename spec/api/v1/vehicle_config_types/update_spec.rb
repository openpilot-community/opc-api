require 'rails_helper'

RSpec.describe "vehicle_config_types#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_types/#{vehicle_config_type.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_type) { create(:vehicle_config_type) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_type.id.to_s,
          type: 'vehicle_config_types',
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
      }.to change { vehicle_config_type.reload.attributes }
      assert_payload(:vehicle_config_type, vehicle_config_type, json_item)

      # ... assert updates attributes ...
    end
  end
end
