class AddArticleIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :article_id, :intiger
    add_index :comments, :article_id
  end
end
