require 'rails_helper'

RSpec.describe "modifications#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/modifications",
      params: params
  end

  describe 'basic fetch' do
    let!(:modification1) { create(:modification) }
    let!(:modification2) { create(:modification) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([modification1.id, modification2.id])
      assert_payload(:modification, modification1, json_items[0])
      assert_payload(:modification, modification2, json_items[1])
    end
  end
end
