require 'rails_helper'

RSpec.describe "contributors#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/contributors",
      params: params
  end

  describe 'basic fetch' do
    let!(:contributor1) { create(:contributor) }
    let!(:contributor2) { create(:contributor) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([contributor1.id, contributor2.id])
      assert_payload(:contributor, contributor1, json_items[0])
      assert_payload(:contributor, contributor2, json_items[1])
    end
  end
end
