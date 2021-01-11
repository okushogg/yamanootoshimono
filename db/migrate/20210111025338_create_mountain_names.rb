class CreateMountainNames < ActiveRecord::Migration[5.2]
  def change
    create_table :mountain_names do |t|
      t.string "mountain_name", nill:false
      t.string "mountain_name_kana", nill:false
      t.timestamps
    end
  end
end
