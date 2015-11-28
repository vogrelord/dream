class AddIsPrivateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :is_private, :boolean
    add_index :posts, :is_private
  end
end
