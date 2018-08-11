require 'rails_helper'

RSpec.describe "video_hardwares#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/video_hardwares/#{video_hardware.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:video_hardware) { create(:video_hardware) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:video_hardware, video_hardware, json_item)
    end
  end
end
