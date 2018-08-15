require 'rails_helper'

RSpec.describe "modification_hardware_type_hardware_items#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/modification_hardware_type_hardware_items/#{modification_hardware_type_hardware_item.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:modification_hardware_type_hardware_item) { create(:modification_hardware_type_hardware_item) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:modification_hardware_type_hardware_item, modification_hardware_type_hardware_item, json_item)
    end
  end
end
