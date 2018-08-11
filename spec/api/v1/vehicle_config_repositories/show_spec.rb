require 'rails_helper'

RSpec.describe "vehicle_config_repositories#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_repositories/#{vehicle_config_repository.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_repository) { create(:vehicle_config_repository) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_repository, vehicle_config_repository, json_item)
    end
  end
end
