require 'rails_helper'

RSpec.describe "vehicle_makes#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_makes",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_make1) { create(:vehicle_make) }
    let!(:vehicle_make2) { create(:vehicle_make) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_make1.id, vehicle_make2.id])
      assert_payload(:vehicle_make, vehicle_make1, json_items[0])
      assert_payload(:vehicle_make, vehicle_make2, json_items[1])
    end
  end
end
