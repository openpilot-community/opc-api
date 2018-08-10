class CreateModifications < ActiveRecord::Migration[5.2]
  def change
    create_table :modifications do |t|
      t.string :name
      t.string :summary
      t.text :description
      t.text :instructions

      t.timestamps
    end
  end
end
