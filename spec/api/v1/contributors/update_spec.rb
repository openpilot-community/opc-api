require 'rails_helper'

RSpec.describe "contributors#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/contributors/#{contributor.id}", payload
  end

  describe 'basic update' do
    let!(:contributor) { create(:contributor) }

    let(:payload) do
      {
        data: {
          id: contributor.id.to_s,
          type: 'contributors',
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
      }.to change { contributor.reload.attributes }
      assert_payload(:contributor, contributor, json_item)

      # ... assert updates attributes ...
    end
  end
end
