class ItemGenre < ActiveRecord::Migration[5.2]
  def change
    add_column :item_genres, :genre_image_id, :integer
    add_column :item_genres, :item_genre_kana, :string
    add_index :item_genres, :item_genre_name
    
  end
end
