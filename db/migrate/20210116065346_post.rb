class Post < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :item_image_id, :string
  end
end
