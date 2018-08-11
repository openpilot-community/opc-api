require 'rails_helper'

RSpec.describe "vehicle_config_types#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_types/#{vehicle_config_type.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_type) { create(:vehicle_config_type) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_type, vehicle_config_type, json_item)
    end
  end
end
