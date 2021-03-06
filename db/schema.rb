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

ActiveRecord::Schema.define(version: 20170518001242) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "babies", force: :cascade do |t|
    t.string   "name"
    t.text     "meaning"
    t.text     "related"
    t.integer  "popularity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "pronounced"
    t.string   "gender"
  end

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liked_names", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "baby_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["baby_id"], name: "index_liked_names_on_baby_id", using: :btree
    t.index ["user_id"], name: "index_liked_names_on_user_id", using: :btree
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partnerships", force: :cascade do |t|
    t.integer  "user_one_id"
    t.integer  "user_two_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_one_id"], name: "index_partnerships_on_user_one_id", using: :btree
    t.index ["user_two_id"], name: "index_partnerships_on_user_two_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "partnership_id"
    t.index ["partnership_id"], name: "index_users_on_partnership_id", using: :btree
  end

  add_foreign_key "liked_names", "babies"
  add_foreign_key "liked_names", "users"
  add_foreign_key "partnerships", "users", column: "user_one_id"
  add_foreign_key "partnerships", "users", column: "user_two_id"
  add_foreign_key "users", "partnerships"
end
