require 'rails_helper'

RSpec.describe "vehicle_config_modifications#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_modifications/#{vehicle_config_modification.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_modification) { create(:vehicle_config_modification) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_modification.id.to_s,
          type: 'vehicle_config_modifications',
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
      }.to change { vehicle_config_modification.reload.attributes }
      assert_payload(:vehicle_config_modification, vehicle_config_modification, json_item)

      # ... assert updates attributes ...
    end
  end
end
