require 'rails_helper'

RSpec.describe "vehicle_options#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_options",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_option1) { create(:vehicle_option) }
    let!(:vehicle_option2) { create(:vehicle_option) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_option1.id, vehicle_option2.id])
      assert_payload(:vehicle_option, vehicle_option1, json_items[0])
      assert_payload(:vehicle_option, vehicle_option2, json_items[1])
    end
  end
end
