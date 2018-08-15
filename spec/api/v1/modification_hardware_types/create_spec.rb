require 'rails_helper'

RSpec.describe "modification_hardware_types#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/modification_hardware_types", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'modification_hardware_types',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { ModificationHardwareType.count }.by(1)
      modification_hardware_type = ModificationHardwareType.last

      assert_payload(:modification_hardware_type, modification_hardware_type, json_item)
    end
  end
end
