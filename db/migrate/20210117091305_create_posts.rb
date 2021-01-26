class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer 'prefecture_id', nill: false
      t.integer 'place_id', nill: false
      t.integer 'item_genre_id', nill: false
      t.integer 'user_id', nill: false

      t.date 'found_day', nill: false
      t.text 'detail', nill: false
      t.string 'strage_place', nill: false
      t.boolean 'is_solved', default: false
      t.timestamps
    end
  end
end
