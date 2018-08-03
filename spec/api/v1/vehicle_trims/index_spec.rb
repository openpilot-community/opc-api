require 'rails_helper'

RSpec.describe "vehicle_trims#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_trims",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_trim1) { create(:vehicle_trim) }
    let!(:vehicle_trim2) { create(:vehicle_trim) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_trim1.id, vehicle_trim2.id])
      assert_payload(:vehicle_trim, vehicle_trim1, json_items[0])
      assert_payload(:vehicle_trim, vehicle_trim2, json_items[1])
    end
  end
end
