require 'rails_helper'

RSpec.describe "modification_hardware_type_hardware_items#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/modification_hardware_type_hardware_items/#{modification_hardware_type_hardware_item.id}"
  end

  describe 'basic destroy' do
    let!(:modification_hardware_type_hardware_item) { create(:modification_hardware_type_hardware_item) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { ModificationHardwareTypeHardwareItem.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
