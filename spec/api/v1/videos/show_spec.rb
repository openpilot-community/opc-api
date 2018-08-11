require 'rails_helper'

RSpec.describe "videos#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/videos/#{video.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:video) { create(:video) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:video, video, json_item)
    end
  end
end
