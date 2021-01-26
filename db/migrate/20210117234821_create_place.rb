class CreatePlace < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string 'name', null: false
      t.string 'name_kana', null: false
      t.integer 'prefecture_id', null: false
      t.timestamps
    end
    add_index :places, %i[name name_kana]
  end
end
