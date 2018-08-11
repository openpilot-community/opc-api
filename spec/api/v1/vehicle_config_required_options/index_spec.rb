require 'rails_helper'

RSpec.describe "vehicle_config_required_options#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/vehicle_config_required_options",
      params: params
  end

  describe 'basic fetch' do
    let!(:vehicle_config_required_option1) { create(:vehicle_config_required_option) }
    let!(:vehicle_config_required_option2) { create(:vehicle_config_required_option) }

    it 'serializes the list correctly' do
      make_request
      expect(json_ids(true)).to match_array([vehicle_config_required_option1.id, vehicle_config_required_option2.id])
      assert_payload(:vehicle_config_required_option, vehicle_config_required_option1, json_items[0])
      assert_payload(:vehicle_config_required_option, vehicle_config_required_option2, json_items[1])
    end
  end
end
