require 'rails_helper'

RSpec.describe "hardware_items#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/hardware_items/#{hardware_item.id}"
  end

  describe 'basic destroy' do
    let!(:hardware_item) { create(:hardware_item) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { HardwareItem.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
