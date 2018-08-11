require 'rails_helper'

RSpec.describe "pull_requests#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/pull_requests/#{pull_request.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:pull_request) { create(:pull_request) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:pull_request, pull_request, json_item)
    end
  end
end
