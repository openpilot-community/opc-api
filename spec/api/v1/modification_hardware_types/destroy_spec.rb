require 'rails_helper'

RSpec.describe "modification_hardware_types#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/modification_hardware_types/#{modification_hardware_type.id}"
  end

  describe 'basic destroy' do
    let!(:modification_hardware_type) { create(:modification_hardware_type) }

    it 'updates the resource' do
      expect {
        make_request
      }.to change { ModificationHardwareType.count }.by(-1)

      expect(response.status).to eq(200)
      expect(json).to eq('meta' => {})
    end
  end
end
