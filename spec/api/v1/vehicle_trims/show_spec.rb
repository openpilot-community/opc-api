require 'rails_helper'

RSpec.describe "vehicle_trims#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_trims/#{vehicle_trim.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_trim) { create(:vehicle_trim) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_trim, vehicle_trim, json_item)
    end
  end
end
