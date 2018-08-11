require 'rails_helper'

RSpec.describe "vehicle_model_options#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_model_options",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_model_option1) { create(:vehicle_model_option) }
    let!(:vehicle_model_option2) { create(:vehicle_model_option) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_model_option1.id, vehicle_model_option2.id])
      assert_payload(:vehicle_model_option, vehicle_model_option1, json_items[0])
      assert_payload(:vehicle_model_option, vehicle_model_option2, json_items[1])
    end
  end
end
