require 'rails_helper'

RSpec.describe UserDiscordVehicleResource, type: :resource do
  describe 'serialization' do
    let!(:user_discord_vehicle) { create(:user_discord_vehicle) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(user_discord_vehicle.id)
      expect(data.jsonapi_type).to eq('user_discord_vehicles')
    end
  end

  describe 'filtering' do
    let!(:user_discord_vehicle1) { create(:user_discord_vehicle) }
    let!(:user_discord_vehicle2) { create(:user_discord_vehicle) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: user_discord_vehicle2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([user_discord_vehicle2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:user_discord_vehicle1) { create(:user_discord_vehicle) }
      let!(:user_discord_vehicle2) { create(:user_discord_vehicle) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            user_discord_vehicle1.id,
            user_discord_vehicle2.id
          ])
        end
      end

      context 'when descending' do
        before do
          params[:sort] = '-id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            user_discord_vehicle2.id,
            user_discord_vehicle1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
