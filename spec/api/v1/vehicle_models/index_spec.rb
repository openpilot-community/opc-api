require 'rails_helper'

RSpec.describe "vehicle_models#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_models",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_model1) { create(:vehicle_model) }
    let!(:vehicle_model2) { create(:vehicle_model) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_model1.id, vehicle_model2.id])
      assert_payload(:vehicle_model, vehicle_model1, json_items[0])
      assert_payload(:vehicle_model, vehicle_model2, json_items[1])
    end
  end
end
