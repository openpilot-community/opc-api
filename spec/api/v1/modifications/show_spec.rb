require 'rails_helper'

RSpec.describe "modifications#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/modifications/#{modification.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:modification) { create(:modification) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:modification, modification, json_item)
    end
  end
end
