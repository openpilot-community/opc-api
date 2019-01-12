require 'rails_helper'

RSpec.describe "user_discord_vehicles#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/user_discord_vehicles/#{user_discord_vehicle.id}", payload
  end

  describe 'basic update' do
    let!(:user_discord_vehicle) { create(:user_discord_vehicle) }

    let(:payload) do
      {
        data: {
          id: user_discord_vehicle.id.to_s,
          type: 'user_discord_vehicles',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(UserDiscordVehicleResource).to receive(:find).and_call_original
      expect {
        make_request
      }.to change { user_discord_vehicle.reload.attributes }
      expect(response.status).to eq(200)
    end
  end
end
