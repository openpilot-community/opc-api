require 'rails_helper'

RSpec.describe "user_discord_vehicles#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/user_discord_vehicles/#{user_discord_vehicle.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:user_discord_vehicle) { create(:user_discord_vehicle) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:user_discord_vehicle, user_discord_vehicle, json_item)
    end
  end
end
