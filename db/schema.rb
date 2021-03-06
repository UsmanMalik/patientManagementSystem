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

ActiveRecord::Schema.define(version: 20160220155436) do

  create_table "admins", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.integer  "age",           limit: 4
    t.string   "email",         limit: 255
    t.date     "date_of_birth"
    t.string   "sex",           limit: 255
    t.text     "address",       limit: 65535
    t.string   "phone",         limit: 255
    t.boolean  "isSms"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "problems", force: :cascade do |t|
    t.string   "current_problem",     limit: 255
    t.string   "history",             limit: 255
    t.string   "diagnosis",           limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
    t.integer  "patient_id",          limit: 4
  end

  add_index "problems", ["patient_id"], name: "index_problems_on_patient_id", using: :btree

  add_foreign_key "problems", "patients"
end
