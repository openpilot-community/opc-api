require 'rails_helper'

RSpec.describe "vehicle_config_hardwares#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_hardwares/#{vehicle_config_hardware.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_hardware) { create(:vehicle_config_hardware) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_hardware, vehicle_config_hardware, json_item)
    end
  end
end
