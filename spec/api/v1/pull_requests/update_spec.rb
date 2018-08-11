require 'rails_helper'

RSpec.describe "pull_requests#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/pull_requests/#{pull_request.id}", payload
  end

  describe 'basic update' do
    let!(:pull_request) { create(:pull_request) }

    let(:payload) do
      {
        data: {
          id: pull_request.id.to_s,
          type: 'pull_requests',
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
      }.to change { pull_request.reload.attributes }
      assert_payload(:pull_request, pull_request, json_item)

      # ... assert updates attributes ...
    end
  end
end
