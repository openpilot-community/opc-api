class AddSourceArticleUrlToGuides < ActiveRecord::Migration[5.2]
  def change
    add_column :guides, :article_source_url, :string
  end
end
