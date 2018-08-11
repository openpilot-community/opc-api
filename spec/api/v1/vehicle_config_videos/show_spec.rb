require 'rails_helper'

RSpec.describe "vehicle_config_videos#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_videos/#{vehicle_config_video.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_video) { create(:vehicle_config_video) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:vehicle_config_video, vehicle_config_video, json_item)
    end
  end
end
