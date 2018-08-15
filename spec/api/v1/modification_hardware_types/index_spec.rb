require 'rails_helper'

RSpec.describe "modification_hardware_types#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/modification_hardware_types",
      params: params
  end

  describe 'basic fetch' do
    let!(:modification_hardware_type1) { create(:modification_hardware_type) }
    let!(:modification_hardware_type2) { create(:modification_hardware_type) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([modification_hardware_type1.id, modification_hardware_type2.id])
      assert_payload(:modification_hardware_type, modification_hardware_type1, json_items[0])
      assert_payload(:modification_hardware_type, modification_hardware_type2, json_items[1])
    end
  end
end
