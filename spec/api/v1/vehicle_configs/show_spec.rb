require 'rails_helper'

RSpec.describe "vehicle_configs#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_configs/#{vehicle_config.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config) { create(:vehicle_config) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config, vehicle_config, json_item)
    end
  end
end
