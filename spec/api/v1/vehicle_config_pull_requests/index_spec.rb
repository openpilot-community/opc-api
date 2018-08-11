require 'rails_helper'

RSpec.describe "vehicle_config_pull_requests#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_pull_requests",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_pull_request1) { create(:vehicle_config_pull_request) }
    let!(:vehicle_config_pull_request2) { create(:vehicle_config_pull_request) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_config_pull_request1.id, vehicle_config_pull_request2.id])
      assert_payload(:vehicle_config_pull_request, vehicle_config_pull_request1, json_items[0])
      assert_payload(:vehicle_config_pull_request, vehicle_config_pull_request2, json_items[1])
    end
  end
end
