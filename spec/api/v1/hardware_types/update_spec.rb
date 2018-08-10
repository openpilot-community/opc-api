require 'rails_helper'

RSpec.describe "hardware_types#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/hardware_types/#{hardware_type.id}", payload
  end

  describe 'basic update' do
    let!(:hardware_type) { create(:hardware_type) }

    let(:payload) do
      {
        data: {
          id: hardware_type.id.to_s,
          type: 'hardware_types',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect {
        make_request
      }.to change { hardware_type.reload.attributes }
      assert_payload(:hardware_type, hardware_type, json_item)

      # ... assert updates attributes ...
    end
  end
end
