class CreatePullRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :pull_requests do |t|
      t.string :name 
      t.string :number 
      t.string :title 
      t.string :state 
      t.string :locked 
      t.string :user
      t.string :body 
      t.string :pr_created_at 
      t.string :pr_updated_at 
      t.string :closed_at 
      t.string :merged_at 
      t.string :merge_commit_sha 
      t.string :head
      t.string :author_association
      t.string :html_url 
      t.timestamps
    end
  end
end
