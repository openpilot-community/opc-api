require 'rails_helper'

RSpec.describe "pull_requests#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/pull_requests/#{pull_request.id}"
  end

  describe 'basic destroy' do
    let!(:pull_request) { create(:pull_request) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { PullRequest.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
