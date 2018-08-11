require 'rails_helper'

RSpec.describe "vehicle_capabilities#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_capabilities/#{vehicle_capability.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_capability) { create(:vehicle_capability) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_capability, vehicle_capability, json_item)
    end
  end
end
