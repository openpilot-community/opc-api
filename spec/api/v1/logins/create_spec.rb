require 'rails_helper'

RSpec.describe "logins#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/logins", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'logins',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { Login.count }.by(1)
      login = Login.last

      assert_payload(:login, login, json_item)
    end
  end
end
