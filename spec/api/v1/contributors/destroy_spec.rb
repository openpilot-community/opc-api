require 'rails_helper'

RSpec.describe "contributors#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/contributors/#{contributor.id}"
  end

  describe 'basic destroy' do
    let!(:contributor) { create(:contributor) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { Contributor.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
