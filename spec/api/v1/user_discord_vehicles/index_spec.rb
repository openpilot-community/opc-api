require 'rails_helper'

RSpec.describe "user_discord_vehicles#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/user_discord_vehicles",
      params: params
  end

  describe 'basic fetch' do
    let!(:user_discord_vehicle1) { create(:user_discord_vehicle) }
    let!(:user_discord_vehicle2) { create(:user_discord_vehicle) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([user_discord_vehicle1.id, user_discord_vehicle2.id])
      assert_payload(:user_discord_vehicle, user_discord_vehicle1, json_items[0])
      assert_payload(:user_discord_vehicle, user_discord_vehicle2, json_items[1])
    end
  end
end
