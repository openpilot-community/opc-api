require 'rails_helper'

RSpec.describe "logins#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/logins/#{login.id}"
  end

  describe 'basic destroy' do
    let!(:login) { create(:login) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { Login.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
