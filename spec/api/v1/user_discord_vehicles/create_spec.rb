require 'rails_helper'

RSpec.describe "user_discord_vehicles#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/user_discord_vehicles", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'user_discord_vehicles',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'works' do
      expect(UserDiscordVehicleResource).to receive(:build).and_call_original
      expect {
        make_request
      }.to change { UserDiscordVehicle.count }.by(1)
      expect(response.status).to eq(201)
    end
  end
end
