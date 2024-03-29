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

ActiveRecord::Schema.define(version: 20140615170914) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tasklists", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tasklist_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

  create_table "users_task_lists", force: true do |t|
    t.integer  "user_id"
    t.integer  "tasklist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users_task_lists", ["tasklist_id"], name: "index_users_task_lists_on_tasklist_id", using: :btree
  add_index "users_task_lists", ["user_id"], name: "index_users_task_lists_on_user_id", using: :btree

end
