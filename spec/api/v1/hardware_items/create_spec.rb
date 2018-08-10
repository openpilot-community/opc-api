require 'rails_helper'

RSpec.describe "hardware_items#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/hardware_items", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'hardware_items',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { HardwareItem.count }.by(1)
      hardware_item = HardwareItem.last

      assert_payload(:hardware_item, hardware_item, json_item)
    end
  end
end
