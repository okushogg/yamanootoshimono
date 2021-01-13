class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string "comment_user_name", nill:false
      t.text "content", nill:false
      t.timestamps
    end
  end
end
