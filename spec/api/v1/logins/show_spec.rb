require 'rails_helper'

RSpec.describe "logins#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/logins/#{login.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:login) { create(:login) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:login, login, json_item)
    end
  end
end
