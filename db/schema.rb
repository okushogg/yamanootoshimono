# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_12_084356) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment_user_name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
  end

  create_table "item_genres", force: :cascade do |t|
    t.string "item_genre_name"
    t.string "item_genre_kana"
    t.string "genre_image_id"
    t.boolean "is_active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_genre_name"], name: "index_item_genres_on_item_genre_name"
  end

  create_table "mountain_names", force: :cascade do |t|
    t.string "mountain_name"
    t.string "mountain_name_kana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "prefecture_id"
    t.index ["mountain_name"], name: "index_mountain_names_on_mountain_name"
    t.index ["mountain_name_kana"], name: "index_mountain_names_on_mountain_name_kana"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "prefecture.id"
    t.integer "item_genre_id"
    t.integer "user_id"
    t.integer "mountain_name_id"
    t.integer "item_image_id"
    t.date "found_day"
    t.string "post_montain_name"
    t.text "detail"
    t.string "strage_place"
    t.boolean "is_solved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefectures", force: :cascade do |t|
    t.string "prefecture_name"
    t.string "prefecture_name_kana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "prefecture_image"
    t.string "region"
    t.index ["prefecture_name"], name: "index_prefectures_on_prefecture_name"
    t.index ["prefecture_name_kana"], name: "index_prefectures_on_prefecture_name_kana"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
