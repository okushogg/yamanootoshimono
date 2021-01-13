class Prefecture < ActiveRecord::Migration[5.2]
  def change
    add_column :prefectures, :prefecture_image, :integer
    add_column :prefectures, :region, :string
    add_index :prefectures, :prefecture_name 
    add_index :prefectures, :prefecture_name_kana
  end
end
