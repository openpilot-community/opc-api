require 'rails_helper'

RSpec.describe "modifications#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/modifications/#{modification.id}"
  end

  describe 'basic destroy' do
    let!(:modification) { create(:modification) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { Modification.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
