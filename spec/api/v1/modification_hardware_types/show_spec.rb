require 'rails_helper'

RSpec.describe "modification_hardware_types#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/modification_hardware_types/#{modification_hardware_type.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:modification_hardware_type) { create(:modification_hardware_type) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:modification_hardware_type, modification_hardware_type, json_item)
    end
  end
end
