class AddUserIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :user_id, :intiger
    add_index :articles, :user_id
  end
end
