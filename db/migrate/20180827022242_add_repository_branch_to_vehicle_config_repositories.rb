class AddRepositoryBranchToVehicleConfigRepositories < ActiveRecord::Migration[5.2]
  def change
    add_reference :vehicle_config_repositories, :repository_branch, foreign_key: true
  end
end
