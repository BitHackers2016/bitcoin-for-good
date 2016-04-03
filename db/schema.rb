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

ActiveRecord::Schema.define(version: 20160403163436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charities", force: :cascade do |t|
    t.string   "ein"
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "encrypted_email"
    t.string   "encrypted_email_iv"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string   "charity_name"
    t.string   "charity_id"
    t.json     "encrypted_data"
    t.string   "encrypted_data_iv"
    t.string   "encrypted_user_id"
    t.string   "encrypted_user_id_iv"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
  end

  add_index "transactions", ["user_id"], name: "index_transactions_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "encrypted_email"
    t.string   "encrypted_email_iv"
    t.json     "encrypted_data"
    t.string   "encrypted_data_iv"
    t.string   "encrypted_name"
    t.string   "encrypted_name_iv"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "transactions", "users"
end
