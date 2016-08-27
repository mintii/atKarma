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

ActiveRecord::Schema.define(version: 20160827201934) do

  create_table "maps", force: :cascade do |t|
    t.float    "completer_location"
    t.float    "completer_id"
    t.float    "task_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "difficulty"
    t.integer  "points"
    t.integer  "requester_id"
    t.integer  "completer_id"
    t.string   "category"
    t.string   "location"
    t.string   "completer_beginning_location"
    t.time     "start_time"
    t.time     "finish_time"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "user_tasks", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "city"
    t.string   "blocked_users"
    t.float    "rating"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "password"
  end

end
