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

ActiveRecord::Schema.define(version: 2019_02_21_215532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "builds", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "jeep_id"
    t.bigint "purchased_item_id"
    t.integer "quantity"
    t.text "description"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jeep_id"], name: "index_builds_on_jeep_id"
    t.index ["purchased_item_id"], name: "index_builds_on_purchased_item_id"
    t.index ["user_id"], name: "index_builds_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "jeep_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jeep_id"], name: "index_favorites_on_jeep_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "jeeps", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.integer "year"
    t.text "description"
    t.string "color"
    t.string "location"
    t.string "vin"
    t.string "condition"
    t.bigint "user_id"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_jeeps_on_user_id"
  end

  create_table "mods", force: :cascade do |t|
    t.string "part"
    t.string "brand"
    t.string "size"
    t.string "color"
    t.integer "year"
    t.string "condition"
    t.integer "quantity"
    t.bigint "jeep_id"
    t.bigint "user_id"
    t.bigint "build_id"
    t.integer "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["build_id"], name: "index_mods_on_build_id"
    t.index ["jeep_id"], name: "index_mods_on_jeep_id"
    t.index ["user_id"], name: "index_mods_on_user_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total_price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.bigint "mod_id"
    t.bigint "jeep_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jeep_id"], name: "index_photos_on_jeep_id"
    t.index ["mod_id"], name: "index_photos_on_mod_id"
  end

  create_table "purchased_builds", force: :cascade do |t|
    t.integer "build_price"
    t.integer "build_quantity"
    t.string "build_name"
    t.text "build_description"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_purchased_builds_on_order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "avatar"
    t.boolean "subscribed"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "builds", "jeeps"
  add_foreign_key "builds", "users"
  add_foreign_key "favorites", "jeeps"
  add_foreign_key "favorites", "users"
  add_foreign_key "jeeps", "users"
  add_foreign_key "mods", "builds"
  add_foreign_key "mods", "jeeps"
  add_foreign_key "mods", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "photos", "jeeps"
  add_foreign_key "photos", "mods"
  add_foreign_key "purchased_builds", "orders"
end
