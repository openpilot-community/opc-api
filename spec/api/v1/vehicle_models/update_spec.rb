require 'rails_helper'

RSpec.describe "vehicle_models#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_models/#{vehicle_model.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_model) { create(:vehicle_model) }

    let(:payload) do
      {
        data: {
          id: vehicle_model.id.to_s,
          type: 'vehicle_models',
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
      }.to change { vehicle_model.reload.attributes }
      assert_payload(:vehicle_model, vehicle_model, json_item)

      # ... assert updates attributes ...
    end
  end
end
