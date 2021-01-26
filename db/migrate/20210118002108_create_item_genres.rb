class CreateItemGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :item_genres do |t|
      t.string 'name', null: false
      t.string 'name_kana', null: false
      t.string 'genre_image_id'
      t.boolean 'is_original', default: false, null: false
      t.boolean 'is_active', default: true, null: false
      t.timestamps
    end
  end
end
