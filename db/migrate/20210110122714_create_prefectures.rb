class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.string "prefecture_name", nill:false
      t.string "prefecture_name_kana", nill:false
      
      t.timestamps
    end
  end
end
