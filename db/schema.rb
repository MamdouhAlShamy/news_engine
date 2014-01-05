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

ActiveRecord::Schema.define(version: 20140105053955) do

  create_table "categories", force: true do |t|
    t.integer  "category_id"
    t.integer  "provider_id"
    t.text     "name"
    t.string   "rss_url"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.integer  "provider_id"
    t.string   "name"
    t.string   "url"
    t.string   "img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stories", force: true do |t|
    t.integer  "story_id"
    t.integer  "provider_id"
    t.integer  "category_id"
    t.text     "title"
    t.text     "details"
    t.string   "img"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "relate1"
    t.integer  "relate2"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "email"
    t.integer  "mobile_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_update_time"
  end

end
