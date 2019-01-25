class AddSurveyFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :openpilot_experience, :string
    add_reference :users, :vehicle_config, foreign_key: true
  end
end
