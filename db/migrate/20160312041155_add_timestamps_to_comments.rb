class AddTimestampsToComments < ActiveRecord::Migration
  def change
    add_column :comments, :created_at, :datetime
    add_column :comments, :update_at, :datetime
  end
end
