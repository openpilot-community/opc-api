require 'rails_helper'

RSpec.describe "vehicle_config_required_options#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_required_options/#{vehicle_config_required_option.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_required_option) { create(:vehicle_config_required_option) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_required_option, vehicle_config_required_option, json_item)
    end
  end
end
