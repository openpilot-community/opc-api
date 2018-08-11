require 'rails_helper'

RSpec.describe "vehicle_make_packages#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_make_packages/#{vehicle_make_package.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_make_package) { create(:vehicle_make_package) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_make_package, vehicle_make_package, json_item)
    end
  end
end
