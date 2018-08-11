require 'rails_helper'

RSpec.describe "repositories#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/repositories/#{repository.id}"
  end

  describe 'basic destroy' do
    let!(:repository) { create(:repository) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { Repository.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
