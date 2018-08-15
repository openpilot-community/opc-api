require 'rails_helper'

RSpec.describe "modification_hardware_type_hardware_items#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/modification_hardware_type_hardware_items", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'modification_hardware_type_hardware_items',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { ModificationHardwareTypeHardwareItem.count }.by(1)
      modification_hardware_type_hardware_item = ModificationHardwareTypeHardwareItem.last

      assert_payload(:modification_hardware_type_hardware_item, modification_hardware_type_hardware_item, json_item)
    end
  end
end
