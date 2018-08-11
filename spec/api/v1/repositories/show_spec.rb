require 'rails_helper'

RSpec.describe "repositories#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/repositories/#{repository.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:repository) { create(:repository) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:repository, repository, json_item)
    end
  end
end
