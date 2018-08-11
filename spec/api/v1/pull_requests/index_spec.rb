require 'rails_helper'

RSpec.describe "pull_requests#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/pull_requests",
      params: params
  end

  describe 'basic fetch' do
    let!(:pull_request1) { create(:pull_request) }
    let!(:pull_request2) { create(:pull_request) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([pull_request1.id, pull_request2.id])
      assert_payload(:pull_request, pull_request1, json_items[0])
      assert_payload(:pull_request, pull_request2, json_items[1])
    end
  end
end
