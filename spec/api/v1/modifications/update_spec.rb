require 'rails_helper'

RSpec.describe "modifications#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/modifications/#{modification.id}", payload
  end

  describe 'basic update' do
    let!(:modification) { create(:modification) }

    let(:payload) do
      {
        data: {
          id: modification.id.to_s,
          type: 'modifications',
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
      }.to change { modification.reload.attributes }
      assert_payload(:modification, modification, json_item)

      # ... assert updates attributes ...
    end
  end
end
