class Prefectur4 < ActiveRecord::Migration[5.2]
  def change
    rename_column :prefectures, :prefecture_image, :prefecture_image_id
  end
end
