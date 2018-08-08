require 'rails_helper'

RSpec.describe "vehicle_option_availabilities#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_option_availabilities/#{vehicle_option_availability.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_option_availability) { create(:vehicle_option_availability) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_option_availability, vehicle_option_availability, json_item)
    end
  end
end
