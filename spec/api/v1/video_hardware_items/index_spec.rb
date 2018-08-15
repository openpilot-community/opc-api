require 'rails_helper'

RSpec.describe "video_hardware_items#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/video_hardware_items",
      params: params
  end

  describe 'basic fetch' do
    let!(:video_hardware_item1) { create(:video_hardware_item) }
    let!(:video_hardware_item2) { create(:video_hardware_item) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([video_hardware_item1.id, video_hardware_item2.id])
      assert_payload(:video_hardware_item, video_hardware_item1, json_items[0])
      assert_payload(:video_hardware_item, video_hardware_item2, json_items[1])
    end
  end
end
