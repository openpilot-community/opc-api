require 'rails_helper'

RSpec.describe "vehicle_config_modifications#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_modifications",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_modification1) { create(:vehicle_config_modification) }
    let!(:vehicle_config_modification2) { create(:vehicle_config_modification) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_config_modification1.id, vehicle_config_modification2.id])
      assert_payload(:vehicle_config_modification, vehicle_config_modification1, json_items[0])
      assert_payload(:vehicle_config_modification, vehicle_config_modification2, json_items[1])
    end
  end
end
