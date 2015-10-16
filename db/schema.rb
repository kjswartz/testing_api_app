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

ActiveRecord::Schema.define(version: 20151016134402) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interpreters", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.text     "language"
    t.boolean  "staff"
    t.string   "status",      default: "Pending"
    t.text     "credentials"
    t.text     "specilities"
    t.text     "licenses"
    t.string   "gender"
    t.text     "vaccines"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.datetime "request_time"
    t.datetime "request_date"
    t.text     "status"
    t.integer  "request_wait"
    t.integer  "provider_total"
    t.text     "provider_list"
    t.string   "language"
    t.integer  "duration"
    t.string   "patient"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.integer  "requester_id"
    t.integer  "interpreter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
  end

  add_index "jobs", ["interpreter_id"], name: "index_jobs_on_interpreter_id", using: :btree
  add_index "jobs", ["requester_id"], name: "index_jobs_on_requester_id", using: :btree

  create_table "requesters", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "password"
    t.string   "department"
    t.string   "department_code"
    t.text     "meeting_place"
    t.string   "permission"
    t.string   "status"
    t.boolean  "centralized",     default: true
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_foreign_key "jobs", "interpreters"
  add_foreign_key "jobs", "requesters"
end
