require 'rails_helper'

RSpec.describe "user_discord_vehicles#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/user_discord_vehicles/#{user_discord_vehicle.id}"
  end

  describe 'basic destroy' do
    let!(:user_discord_vehicle) { create(:user_discord_vehicle) }

    it 'updates the resource' do
      expect(UserDiscordVehicleResource).to receive(:find).and_call_original
      expect { make_request }.to change { UserDiscordVehicle.count }.by(-1)
      expect { user_discord_vehicle.reload }
        .to raise_error(ActiveRecord::RecordNotFound)
      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
