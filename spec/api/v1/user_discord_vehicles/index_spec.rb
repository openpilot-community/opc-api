require 'rails_helper'

RSpec.describe "user_discord_vehicles#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/user_discord_vehicles", params: params
  end

  describe 'basic fetch' do
    let!(:user_discord_vehicle1) { create(:user_discord_vehicle) }
    let!(:user_discord_vehicle2) { create(:user_discord_vehicle) }

    it 'works' do
      expect(UserDiscordVehicleResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.map(&:jsonapi_type).uniq).to match_array(['user_discord_vehicles'])
      expect(d.map(&:id)).to match_array([user_discord_vehicle1.id, user_discord_vehicle2.id])
    end
  end
end
