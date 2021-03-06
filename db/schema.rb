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

ActiveRecord::Schema.define(version: 20160510022346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_channels_on_name", using: :btree
    t.index ["user_id"], name: "index_channels_on_user_id", using: :btree
  end

  create_table "channels_sources", id: false, force: :cascade do |t|
    t.integer "channel_id"
    t.integer "source_id"
    t.index ["channel_id"], name: "index_channels_sources_on_channel_id", using: :btree
    t.index ["source_id"], name: "index_channels_sources_on_source_id", using: :btree
  end

  create_table "sources", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "type"
    t.json     "credentials"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
