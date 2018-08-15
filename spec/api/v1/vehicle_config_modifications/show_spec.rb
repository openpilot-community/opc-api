require 'rails_helper'

RSpec.describe "vehicle_config_modifications#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_modifications/#{vehicle_config_modification.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_modification) { create(:vehicle_config_modification) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_modification, vehicle_config_modification, json_item)
    end
  end
end
