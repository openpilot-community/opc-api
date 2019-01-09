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

    it 'creates the resource' do
      expect {
        make_request
      }.to change { UserDiscordVehicle.count }.by(1)
      user_discord_vehicle = UserDiscordVehicle.last

      assert_payload(:user_discord_vehicle, user_discord_vehicle, json_item)
    end
  end
end
