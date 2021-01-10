class CreateItemGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :item_genres do |t|
      t.string "item_genre_name", nill:false
      t.boolean "is_active", default: true, null: false
      t.timestamps
    end
  end
end