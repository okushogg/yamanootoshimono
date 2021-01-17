class Comment1 < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :comment_user_name, :string
  end
end
