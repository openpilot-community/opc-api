require 'rails_helper'

RSpec.describe "user_discord_vehicles#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/user_discord_vehicles/#{user_discord_vehicle.id}", params: params
  end

  describe 'basic fetch' do
    let!(:user_discord_vehicle) { create(:user_discord_vehicle) }

    it 'works' do
      expect(UserDiscordVehicleResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq('user_discord_vehicles')
      expect(d.id).to eq(user_discord_vehicle.id)
    end
  end
end
