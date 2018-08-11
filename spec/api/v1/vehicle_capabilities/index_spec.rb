require 'rails_helper'

RSpec.describe "vehicle_capabilities#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_capabilities",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_capability1) { create(:vehicle_capability) }
    let!(:vehicle_capability2) { create(:vehicle_capability) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_capability1.id, vehicle_capability2.id])
      assert_payload(:vehicle_capability, vehicle_capability1, json_items[0])
      assert_payload(:vehicle_capability, vehicle_capability2, json_items[1])
    end
  end
end
