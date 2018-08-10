require 'rails_helper'

RSpec.describe "hardware_types#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/hardware_types",
      params: params
  end

  describe 'basic fetch' do
    let!(:hardware_type1) { create(:hardware_type) }
    let!(:hardware_type2) { create(:hardware_type) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([hardware_type1.id, hardware_type2.id])
      assert_payload(:hardware_type, hardware_type1, json_items[0])
      assert_payload(:hardware_type, hardware_type2, json_items[1])
    end
  end
end
