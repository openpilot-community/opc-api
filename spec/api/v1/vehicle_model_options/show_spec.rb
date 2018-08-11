require 'rails_helper'

RSpec.describe "vehicle_model_options#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_model_options/#{vehicle_model_option.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_model_option) { create(:vehicle_model_option) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_model_option, vehicle_model_option, json_item)
    end
  end
end
