require 'rails_helper'

RSpec.describe "repositories#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/repositories",
      params: params
  end

  describe 'basic fetch' do
    let!(:repository1) { create(:repository) }
    let!(:repository2) { create(:repository) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([repository1.id, repository2.id])
      assert_payload(:repository, repository1, json_items[0])
      assert_payload(:repository, repository2, json_items[1])
    end
  end
end
