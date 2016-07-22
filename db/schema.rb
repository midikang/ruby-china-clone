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

ActiveRecord::Schema.define(version: 20160722081754) do

  create_table "counters", force: :cascade do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nodes", force: :cascade do |t|
    t.string   "name"
    t.integer  "section_id"
    t.integer  "sort"
    t.integer  "topics_count"
    t.string   "summary"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "nodes", ["section_id"], name: "index_nodes_on_section_id"

  create_table "replies", force: :cascade do |t|
    t.integer  "topic_id"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "state"
    t.string   "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "replies", ["topic_id"], name: "index_replies_on_topic_id"
  add_index "replies", ["user_id"], name: "index_replies_on_user_id"

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string   "title"
    t.integer  "node_id"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "replies_count"
    t.integer  "last_reply_user_id"
    t.datetime "replied_at"
    t.string   "source"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "topics", ["node_id"], name: "index_topics_on_node_id"
  add_index "topics", ["user_id"], name: "index_topics_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "passwd"
    t.string   "name"
    t.string   "location"
    t.string   "bio"
    t.string   "website"
    t.string   "avatar_file_name"
    t.boolean  "verified",         default: false, null: false
    t.integer  "state"
    t.string   "qq"
    t.datetime "last_logined_at"
    t.string   "tagline"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

end
