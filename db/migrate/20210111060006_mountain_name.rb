class MountainName < ActiveRecord::Migration[5.2]
  def change
    add_column :mountain_names, :prefecture_id, :integer
  
    add_index :mountain_names, :mountain_name
    add_index :mountain_names, :mountain_name_kana
  end
end
