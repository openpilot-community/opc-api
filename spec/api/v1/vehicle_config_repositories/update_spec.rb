require 'rails_helper'

RSpec.describe "vehicle_config_repositories#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_repositories/#{vehicle_config_repository.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_repository) { create(:vehicle_config_repository) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_repository.id.to_s,
          type: 'vehicle_config_repositories',
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
      }.to change { vehicle_config_repository.reload.attributes }
      assert_payload(:vehicle_config_repository, vehicle_config_repository, json_item)

      # ... assert updates attributes ...
    end
  end
end
