require 'rails_helper'

RSpec.describe "hardware_types#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/hardware_types/#{hardware_type.id}",
      params: params
  end

  describe 'basic fetch' do
    let!(:hardware_type) { create(:hardware_type) }

    it 'serializes the resource correctly' do
      make_request
      assert_payload(:hardware_type, hardware_type, json_item)
    end
  end
end
