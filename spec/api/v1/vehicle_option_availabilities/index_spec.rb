require 'rails_helper'

RSpec.describe "vehicle_option_availabilities#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_option_availabilities",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_option_availability1) { create(:vehicle_option_availability) }
    let!(:vehicle_option_availability2) { create(:vehicle_option_availability) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_option_availability1.id, vehicle_option_availability2.id])
      assert_payload(:vehicle_option_availability, vehicle_option_availability1, json_items[0])
      assert_payload(:vehicle_option_availability, vehicle_option_availability2, json_items[1])
    end
  end
end
