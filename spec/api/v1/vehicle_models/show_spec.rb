require 'rails_helper'

RSpec.describe "vehicle_models#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_models/#{vehicle_model.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_model) { create(:vehicle_model) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_model, vehicle_model, json_item)
    end
  end
end
