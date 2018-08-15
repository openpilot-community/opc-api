require 'rails_helper'

RSpec.describe "modification_hardware_type_hardware_items#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/modification_hardware_type_hardware_items/#{modification_hardware_type_hardware_item.id}", payload
  end

  describe 'basic update' do
    let!(:modification_hardware_type_hardware_item) { create(:modification_hardware_type_hardware_item) }

    let(:payload) do
      {
        data: {
          id: modification_hardware_type_hardware_item.id.to_s,
          type: 'modification_hardware_type_hardware_items',
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
      }.to change { modification_hardware_type_hardware_item.reload.attributes }
      assert_payload(:modification_hardware_type_hardware_item, modification_hardware_type_hardware_item, json_item)

      # ... assert updates attributes ...
    end
  end
end
