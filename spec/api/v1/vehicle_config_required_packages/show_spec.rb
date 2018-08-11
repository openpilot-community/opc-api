require 'rails_helper'

RSpec.describe "vehicle_config_required_packages#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_required_packages/#{vehicle_config_required_package.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_required_package) { create(:vehicle_config_required_package) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_required_package, vehicle_config_required_package, json_item)
    end
  end
end
