require 'rails_helper'

RSpec.describe "videos#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/videos/#{video.id}"
  end

  describe 'basic destroy' do
    let!(:video) { create(:video) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { Video.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
