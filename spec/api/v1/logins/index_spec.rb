require 'rails_helper'

RSpec.describe "logins#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/logins",
      params: params
  end

  describe 'basic fetch' do
    let!(:login1) { create(:login) }
    let!(:login2) { create(:login) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([login1.id, login2.id])
      assert_payload(:login, login1, json_items[0])
      assert_payload(:login, login2, json_items[1])
    end
  end
end
