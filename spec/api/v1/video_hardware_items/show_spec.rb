require 'rails_helper'

RSpec.describe "video_hardware_items#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/video_hardware_items/#{video_hardware_item.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:video_hardware_item) { create(:video_hardware_item) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:video_hardware_item, video_hardware_item, json_item)
    end
  end
end
