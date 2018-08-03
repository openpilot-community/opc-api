require 'rails_helper'

RSpec.describe "vehicle_config_statuses#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_statuses",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_status1) { create(:vehicle_config_status) }
    let!(:vehicle_config_status2) { create(:vehicle_config_status) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_config_status1.id, vehicle_config_status2.id])
      assert_payload(:vehicle_config_status, vehicle_config_status1, json_items[0])
      assert_payload(:vehicle_config_status, vehicle_config_status2, json_items[1])
    end
  end
end
