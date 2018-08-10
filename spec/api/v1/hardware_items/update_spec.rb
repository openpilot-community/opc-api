require 'rails_helper'

RSpec.describe "hardware_items#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/hardware_items/#{hardware_item.id}", payload
  end

  describe 'basic update' do
    let!(:hardware_item) { create(:hardware_item) }

    let(:payload) do
      {
        data: {
          id: hardware_item.id.to_s,
          type: 'hardware_items',
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
      }.to change { hardware_item.reload.attributes }
      assert_payload(:hardware_item, hardware_item, json_item)

      # ... assert updates attributes ...
    end
  end
end
