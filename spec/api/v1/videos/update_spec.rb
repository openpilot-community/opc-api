require 'rails_helper'

RSpec.describe "videos#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/videos/#{video.id}", payload
  end

  describe 'basic update' do
    let!(:video) { create(:video) }

    let(:payload) do
      {
        data: {
          id: video.id.to_s,
          type: 'videos',
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
      }.to change { video.reload.attributes }
      assert_payload(:video, video, json_item)

      # ... assert updates attributes ...
    end
  end
end
