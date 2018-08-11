require 'rails_helper'

RSpec.describe "vehicle_model_options#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_model_options/#{vehicle_model_option.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_model_option) { create(:vehicle_model_option) }

    let(:payload) do
      {
        data: {
          id: vehicle_model_option.id.to_s,
          type: 'vehicle_model_options',
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
      }.to change { vehicle_model_option.reload.attributes }
      assert_payload(:vehicle_model_option, vehicle_model_option, json_item)

      # ... assert updates attributes ...
    end
  end
end
