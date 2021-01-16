class Post1 < ActiveRecord::Migration[5.2]
  def change
     rename_column :posts, "prefecture.id", :prefecture_id
     remove_column :posts, :item_image_id, :string
  end
end
