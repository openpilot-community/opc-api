require 'rails_helper'

RSpec.describe "hardware_items#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/hardware_items",
      params: params
  end

  describe 'basic fetch' do
    let!(:hardware_item1) { create(:hardware_item) }
    let!(:hardware_item2) { create(:hardware_item) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([hardware_item1.id, hardware_item2.id])
      assert_payload(:hardware_item, hardware_item1, json_items[0])
      assert_payload(:hardware_item, hardware_item2, json_items[1])
    end
  end
end
