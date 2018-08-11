require 'rails_helper'

RSpec.describe "logins#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/logins/#{login.id}", payload
  end

  describe 'basic update' do
    let!(:login) { create(:login) }

    let(:payload) do
      {
        data: {
          id: login.id.to_s,
          type: 'logins',
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
      }.to change { login.reload.attributes }
      assert_payload(:login, login, json_item)

      # ... assert updates attributes ...
    end
  end
end
