require 'rails_helper'

RSpec.describe UserDiscordVehicleResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'user_discord_vehicles',
          attributes: { }
        }
      }
    end

    let(:instance) do
      UserDiscordVehicleResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true)
      }.to change { UserDiscordVehicle.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:user_discord_vehicle) { create(:user_discord_vehicle) }

    let(:payload) do
      {
        data: {
          id: user_discord_vehicle.id.to_s,
          type: 'user_discord_vehicles',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      UserDiscordVehicleResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { user_discord_vehicle.reload.updated_at }
      # .and change { user_discord_vehicle.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:user_discord_vehicle) { create(:user_discord_vehicle) }

    let(:instance) do
      UserDiscordVehicleResource.find(id: user_discord_vehicle.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { UserDiscordVehicle.count }.by(-1)
    end
  end
end
