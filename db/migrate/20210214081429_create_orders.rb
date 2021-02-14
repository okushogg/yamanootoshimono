class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false
      t.integer :place_id
      t.integer :item_genre
      t.string :title
      t.string  :content
      t.timestamps
    end
  end
end
