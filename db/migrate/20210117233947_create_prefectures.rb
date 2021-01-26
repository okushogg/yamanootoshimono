class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
      t.string 'prefecture_name', null: false
      t.string 'prefecture_name_kana', null: false
      t.string 'region', null: false
      t.timestamps
    end
    add_index :prefectures, %i[prefecture_name prefecture_name_kana]
  end
end
