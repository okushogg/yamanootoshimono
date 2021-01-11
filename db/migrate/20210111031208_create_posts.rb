class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      
      t.integer "prefecture.id", nill:false
      t.integer "item_genre_id", nill:false
      t.integer "user_id"
      t.integer "mountain_name_id"
      
      t.integer "item_image_id"
      t.date "found_day", nill:false
      t.string "post_montain_name", nill:false
      t.text "detail", nill:false
      t.string "strage_place", nill:false
      t.boolean "is_solved", default:false, nill:false
      
      t.timestamps
    end
  end
end
