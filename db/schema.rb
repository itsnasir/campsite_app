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

ActiveRecord::Schema.define(version: 20170613094921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "name"
    t.integer  "campsite_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "activities", ["campsite_id"], name: "index_activities_on_campsite_id", using: :btree

  create_table "campsites", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "children", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "date_of_birth"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "children_activities", force: :cascade do |t|
    t.integer  "child_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "children_activities", ["activity_id"], name: "index_children_activities_on_activity_id", using: :btree
  add_index "children_activities", ["child_id"], name: "index_children_activities_on_child_id", using: :btree

  create_table "children_checks", force: :cascade do |t|
    t.integer  "child_id"
    t.integer  "activity_id"
    t.string   "category"
    t.datetime "timestamp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "children_checks", ["activity_id"], name: "index_children_checks_on_activity_id", using: :btree
  add_index "children_checks", ["category"], name: "index_children_checks_on_category", using: :btree
  add_index "children_checks", ["child_id"], name: "index_children_checks_on_child_id", using: :btree

end
