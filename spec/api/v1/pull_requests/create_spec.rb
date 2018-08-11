require 'rails_helper'

RSpec.describe "pull_requests#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/pull_requests", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'pull_requests',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { PullRequest.count }.by(1)
      pull_request = PullRequest.last

      assert_payload(:pull_request, pull_request, json_item)
    end
  end
end
