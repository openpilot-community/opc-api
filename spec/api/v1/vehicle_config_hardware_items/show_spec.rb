require 'rails_helper'

RSpec.describe "vehicle_config_hardware_items#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_hardware_items/#{vehicle_config_hardware_item.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_hardware_item) { create(:vehicle_config_hardware_item) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_hardware_item, vehicle_config_hardware_item, json_item)
    end
  end
end
