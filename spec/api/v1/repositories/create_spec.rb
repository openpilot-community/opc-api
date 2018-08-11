require 'rails_helper'

RSpec.describe "repositories#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/repositories", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'repositories',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { Repository.count }.by(1)
      repository = Repository.last

      assert_payload(:repository, repository, json_item)
    end
  end
end
