require 'rails_helper'

RSpec.describe "repositories#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/repositories/#{repository.id}", payload
  end

  describe 'basic update' do
    let!(:repository) { create(:repository) }

    let(:payload) do
      {
        data: {
          id: repository.id.to_s,
          type: 'repositories',
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
      }.to change { repository.reload.attributes }
      assert_payload(:repository, repository, json_item)

      # ... assert updates attributes ...
    end
  end
end
