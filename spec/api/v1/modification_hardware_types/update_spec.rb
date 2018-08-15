require 'rails_helper'

RSpec.describe "modification_hardware_types#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/modification_hardware_types/#{modification_hardware_type.id}", payload
  end

  describe 'basic update' do
    let!(:modification_hardware_type) { create(:modification_hardware_type) }

    let(:payload) do
      {
        data: {
          id: modification_hardware_type.id.to_s,
          type: 'modification_hardware_types',
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
      }.to change { modification_hardware_type.reload.attributes }
      assert_payload(:modification_hardware_type, modification_hardware_type, json_item)

      # ... assert updates attributes ...
    end
  end
end
