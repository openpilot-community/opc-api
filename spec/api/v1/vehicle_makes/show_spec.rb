require 'rails_helper'

RSpec.describe "vehicle_makes#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_makes/#{vehicle_make.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_make) { create(:vehicle_make) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_make, vehicle_make, json_item)
    end
  end
end
