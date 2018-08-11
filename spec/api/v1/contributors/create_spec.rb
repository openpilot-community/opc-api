require 'rails_helper'

RSpec.describe "contributors#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/contributors", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'contributors',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { Contributor.count }.by(1)
      contributor = Contributor.last

      assert_payload(:contributor, contributor, json_item)
    end
  end
end
