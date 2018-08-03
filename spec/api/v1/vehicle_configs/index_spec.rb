require 'rails_helper'

RSpec.describe "vehicle_configs#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_configs",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config1) { create(:vehicle_config) }
    let!(:vehicle_config2) { create(:vehicle_config) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_config1.id, vehicle_config2.id])
      assert_payload(:vehicle_config, vehicle_config1, json_items[0])
      assert_payload(:vehicle_config, vehicle_config2, json_items[1])
    end
  end
end
