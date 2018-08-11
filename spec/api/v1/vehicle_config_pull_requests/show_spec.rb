require 'rails_helper'

RSpec.describe "vehicle_config_pull_requests#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_pull_requests/#{vehicle_config_pull_request.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_pull_request) { create(:vehicle_config_pull_request) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_pull_request, vehicle_config_pull_request, json_item)
    end
  end
end
