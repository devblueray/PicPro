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

ActiveRecord::Schema.define(version: 20131005054928) do

  create_table "customers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "galleries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
  end

  create_table "portraits", force: true do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "attachable_id"
    t.integer  "gallery_id"
  end

  add_index "portraits", ["attachable_id"], name: "index_portraits_on_attachable_id"

end
