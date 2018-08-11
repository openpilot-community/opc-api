require 'rails_helper'

RSpec.describe "vehicle_config_repositories#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_repositories",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_repository1) { create(:vehicle_config_repository) }
    let!(:vehicle_config_repository2) { create(:vehicle_config_repository) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_config_repository1.id, vehicle_config_repository2.id])
      assert_payload(:vehicle_config_repository, vehicle_config_repository1, json_items[0])
      assert_payload(:vehicle_config_repository, vehicle_config_repository2, json_items[1])
    end
  end
end
