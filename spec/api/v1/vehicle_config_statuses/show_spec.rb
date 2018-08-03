require 'rails_helper'

RSpec.describe "vehicle_config_statuses#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_statuses/#{vehicle_config_status.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_status) { create(:vehicle_config_status) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_status, vehicle_config_status, json_item)
    end
  end
end
