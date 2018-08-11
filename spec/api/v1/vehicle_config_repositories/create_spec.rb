require 'rails_helper'

RSpec.describe "vehicle_config_repositories#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/vehicle_config_repositories", payload
  end

  describe 'basic create' do
    let(:payload) do
      {
        data: {
          type: 'vehicle_config_repositories',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    it 'creates the resource' do
      expect {
        make_request
      }.to change { VehicleConfigRepository.count }.by(1)
      vehicle_config_repository = VehicleConfigRepository.last

      assert_payload(:vehicle_config_repository, vehicle_config_repository, json_item)
    end
  end
end
