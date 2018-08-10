require 'rails_helper'

RSpec.describe "hardware_types#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/hardware_types", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'hardware_types',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { HardwareType.count }.by(1)
      hardware_type = HardwareType.last

      assert_payload(:hardware_type, hardware_type, json_item)
    end
  end
end
