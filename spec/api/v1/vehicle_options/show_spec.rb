require 'rails_helper'

RSpec.describe "vehicle_options#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_options/#{vehicle_option.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_option) { create(:vehicle_option) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_option, vehicle_option, json_item)
    end
  end
end
