require 'rails_helper'

RSpec.describe "modifications#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/modifications", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'modifications',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { Modification.count }.by(1)
      modification = Modification.last

      assert_payload(:modification, modification, json_item)
    end
  end
end
