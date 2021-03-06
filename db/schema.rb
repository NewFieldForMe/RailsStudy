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

ActiveRecord::Schema.define(version: 20170103123240) do

  create_table "assignment_processes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rolls", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sheetrow_assignment_processes", force: :cascade do |t|
    t.integer  "sheetrow_id"
    t.integer  "assignment_process_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "sheetrows", force: :cascade do |t|
    t.integer  "order_num"
    t.string   "scene_type"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "comment_title"
    t.text     "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "roll_id"
    t.string   "scale"
    t.string   "language"
    t.string   "DB"
    t.string   "OS"
    t.string   "tools"
    t.integer  "user_id"
    t.index ["roll_id"], name: "index_sheetrows_on_roll_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "accountid"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
