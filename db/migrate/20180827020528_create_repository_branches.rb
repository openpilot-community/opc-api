class CreateRepositoryBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :repository_branches do |t|
      t.string :name
      t.references :repository, foreign_key: true

      t.timestamps
    end
  end
end
