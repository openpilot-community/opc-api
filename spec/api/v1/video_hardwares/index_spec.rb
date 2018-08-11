require 'rails_helper'

RSpec.describe "video_hardwares#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/video_hardwares",
      params: params
  end

  describe 'basic fetch' do
    let!(:video_hardware1) { create(:video_hardware) }
    let!(:video_hardware2) { create(:video_hardware) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([video_hardware1.id, video_hardware2.id])
      assert_payload(:video_hardware, video_hardware1, json_items[0])
      assert_payload(:video_hardware, video_hardware2, json_items[1])
    end
  end
end
