require 'rails_helper'

RSpec.describe "hardware_types#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/hardware_types/#{hardware_type.id}"
  end

  describe 'basic destroy' do
    let!(:hardware_type) { create(:hardware_type) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { HardwareType.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
