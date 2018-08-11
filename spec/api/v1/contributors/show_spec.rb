require 'rails_helper'

RSpec.describe "contributors#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/contributors/#{contributor.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:contributor) { create(:contributor) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:contributor, contributor, json_item)
    end
  end
end
