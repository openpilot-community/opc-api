require 'rails_helper'

RSpec.describe "hardware_items#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/hardware_items/#{hardware_item.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:hardware_item) { create(:hardware_item) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:hardware_item, hardware_item, json_item)
    end
  end
end
