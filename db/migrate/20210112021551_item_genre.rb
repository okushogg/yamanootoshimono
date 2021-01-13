class ItemGenre < ActiveRecord::Migration[5.2]
  def change
    add_index :item_genres, :item_genre_name
  end
end
