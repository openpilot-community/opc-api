require 'rails_helper'

RSpec.describe "videos#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/videos",
      params: params
  end

  describe 'basic fetch' do
    let!(:video1) { create(:video) }
    let!(:video2) { create(:video) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([video1.id, video2.id])
      assert_payload(:video, video1, json_items[0])
      assert_payload(:video, video2, json_items[1])
    end
  end
end
