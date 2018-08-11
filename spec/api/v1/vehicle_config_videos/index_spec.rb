require 'rails_helper'

RSpec.describe "vehicle_config_videos#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_videos",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_video1) { create(:vehicle_config_video) }
    let!(:vehicle_config_video2) { create(:vehicle_config_video) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_config_video1.id, vehicle_config_video2.id])
      assert_payload(:vehicle_config_video, vehicle_config_video1, json_items[0])
      assert_payload(:vehicle_config_video, vehicle_config_video2, json_items[1])
    end
  end
end
