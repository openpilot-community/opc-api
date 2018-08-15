require 'rails_helper'

RSpec.describe "modification_hardware_type_hardware_items#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/modification_hardware_type_hardware_items",
      params: params
  end

  describe 'basic fetch' do
    let!(:modification_hardware_type_hardware_item1) { create(:modification_hardware_type_hardware_item) }
    let!(:modification_hardware_type_hardware_item2) { create(:modification_hardware_type_hardware_item) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([modification_hardware_type_hardware_item1.id, modification_hardware_type_hardware_item2.id])
      assert_payload(:modification_hardware_type_hardware_item, modification_hardware_type_hardware_item1, json_items[0])
      assert_payload(:modification_hardware_type_hardware_item, modification_hardware_type_hardware_item2, json_items[1])
    end
  end
end
