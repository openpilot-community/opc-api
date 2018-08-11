require 'rails_helper'

RSpec.describe "vehicle_config_capabilities#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_capabilities/#{vehicle_config_capability.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_capability) { create(:vehicle_config_capability) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_capability, vehicle_config_capability, json_item)
    end
  end
end
