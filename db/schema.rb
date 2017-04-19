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

ActiveRecord::Schema.define(version: 20161219134403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "yamalog_pics", force: :cascade do |t|
    t.text     "image"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "yamalog_id"
    t.boolean  "deletepic",  default: false
  end

  add_index "yamalog_pics", ["yamalog_id"], name: "index_yamalog_pics_on_yamalog_id", using: :btree

  create_table "yamalogs", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "yama_date",   null: false
    t.string   "yama_name",   null: false
    t.string   "weather",     null: false
    t.string   "member",      null: false
    t.text     "route",       null: false
    t.text     "gpslog"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "yamalog_pic"
  end

  add_index "yamalogs", ["user_id", "yama_name"], name: "index_yamalogs_on_user_id_and_yama_name", using: :btree

  add_foreign_key "yamalog_pics", "yamalogs"
end
