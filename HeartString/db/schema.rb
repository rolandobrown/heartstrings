# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150902011007) do

  create_table "families", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "families", ["user_id"], name: "index_families_on_user_id"

  create_table "keepsakes", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "keepsakes", ["user_id"], name: "index_keepsakes_on_user_id"

  create_table "messages", force: :cascade do |t|
    t.datetime "publish_on"
    t.string   "subject"
    t.text     "body"
    t.boolean  "draft"
    t.boolean  "deletable"
    t.boolean  "share_with_family"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "messages", ["user_id"], name: "index_messages_on_user_id"

  create_table "requests", force: :cascade do |t|
    t.string   "subject"
    t.text     "body"
    t.datetime "publish_on"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "requests", ["user_id"], name: "index_requests_on_user_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "roles", ["user_id"], name: "index_roles_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "username"
    t.string   "crypted_password"
    t.string   "perishable_token"
    t.string   "persistence_token"
    t.string   "password_digest"
    t.string   "name"
    t.datetime "dob"
    t.text     "bio"
    t.text     "role"
    t.integer  "family_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "users", ["family_id"], name: "index_users_on_family_id"

end
