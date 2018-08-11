require 'rails_helper'

RSpec.describe "vehicle_config_required_packages#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/vehicle_config_required_packages/#{vehicle_config_required_package.id}", payload
  end

  describe 'basic update' do
    let!(:vehicle_config_required_package) { create(:vehicle_config_required_package) }

    let(:payload) do
      {
        data: {
          id: vehicle_config_required_package.id.to_s,
          type: 'vehicle_config_required_packages',
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
      }.to change { vehicle_config_required_package.reload.attributes }
      assert_payload(:vehicle_config_required_package, vehicle_config_required_package, json_item)

      # ... assert updates attributes ...
    end
  end
end
