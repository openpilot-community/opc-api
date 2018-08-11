require 'rails_helper'

RSpec.describe "videos#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/videos", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'videos',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { Video.count }.by(1)
      video = Video.last

      assert_payload(:video, video, json_item)
    end
  end
end
