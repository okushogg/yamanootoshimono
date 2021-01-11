class Comment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :post_id, :integer, null:false
    
  end
end
