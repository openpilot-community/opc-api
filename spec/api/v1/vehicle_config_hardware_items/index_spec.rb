require 'rails_helper'

RSpec.describe "vehicle_config_hardware_items#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_hardware_items",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_hardware_item1) { create(:vehicle_config_hardware_item) }
    let!(:vehicle_config_hardware_item2) { create(:vehicle_config_hardware_item) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_config_hardware_item1.id, vehicle_config_hardware_item2.id])
      assert_payload(:vehicle_config_hardware_item, vehicle_config_hardware_item1, json_items[0])
      assert_payload(:vehicle_config_hardware_item, vehicle_config_hardware_item2, json_items[1])
    end
  end
end
