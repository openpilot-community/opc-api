require 'rails_helper'

RSpec.describe "vehicle_make_packages#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_make_packages",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_make_package1) { create(:vehicle_make_package) }
    let!(:vehicle_make_package2) { create(:vehicle_make_package) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_make_package1.id, vehicle_make_package2.id])
      assert_payload(:vehicle_make_package, vehicle_make_package1, json_items[0])
      assert_payload(:vehicle_make_package, vehicle_make_package2, json_items[1])
    end
  end
end
